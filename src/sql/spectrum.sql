-- DEFINES A SPECTRUM FROM MATERIAL COLLECTED ON A DETECTOR
CREATE TABLE SPECTRUM (
    PKEY INTEGER PRIMARY KEY AUTOINCREMENT,
    DETECTOR INTEGER NOT NULL, -- Need to know the detector ()
    BEAMENERGY REAL NOT NULL, -- IN EV
    COMPOSITION INTEGER,
    COLLECTEDBY INTEGER NOT NULL,  -- PERSON(PKEY)
    SAMPLE INTEGER NOT NULL, -- SAMPLE(PKEY)
    COLLECTED REAL NOT NULL, -- Relative to proleptic Gregorian calendar epoch in days
    NAME TEXT,
    ARTIFACT INT NOT NULL, -- The spectrum data in a standard spectrum file format
    FOREIGN KEY(DETECTOR) REFERENCES DETECTOR(PKEY),
    FOREIGN KEY(COMPOSITION) REFERENCES MATERIAL(PKEY),
    FOREIGN KEY(COLLECTEDBY) REFERENCES PERSON(PKEY),
    FOREIGN KEY(SAMPLE) REFERENCES SAMPLE(PKEY),
    FOREIGN KEY(ARTIFACT) REFERENCES ARTIFACT(PKEY)
);

-- Maps SPECTRUM data items to projects.
CREATE TABLE PROJECTSPECTRUM (
    PKEY INTEGER PRIMARY KEY AUTOINCREMENT,
    PROJECT INTEGER NOT NULL,
    SPECTRUM INT NOT NULL,
    FOREIGN KEY(SPECTRUM) REFERENCES SPECTRUM(PKEY)
);

CREATE INDEX PROJECTSPECTRUM_PROJECT_IDX ON PROJECTSPECTRUM(PROJECT);
