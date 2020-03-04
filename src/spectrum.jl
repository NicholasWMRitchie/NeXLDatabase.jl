#CREATE TABLE SPECTRUM (
#    PKEY INTEGER PRIMARY KEY AUTOINCREMENT,
#    DETECTOR INTEGER NOT NULL, -- Need to know the detector ()
#    BEAMENERGY REAL NOT NULL, -- IN EV
#    COMPOSITION INTEGER,
#    COLLECTEDBY INTEGER NOT NULL,  -- PERSON(PKEY)
#    SAMPLE INTEGER NOT NULL, -- SAMPLE(PKEY)
#    COLLECTED TIMESTAMP NOT NULL,
#    NAME TEXT,
#    ARTIFACT INT NOT NULL, -- The spectrum data in a standard spectrum file format
#    FOREIGN KEY(DETECTOR) REFERENCES DETECTOR(PKEY),
#    FOREIGN KEY(COMPOSITION) REFERENCES MATERIAL(PKEY),
#    FOREIGN KEY(COLLECTEDBY) REFERENCES PERSON(PKEY),
#    FOREIGN KEY(SAMPLE) REFERENCES SAMPLE(PKEY),
#    FOREIGN KEY(ARTIFACT) REFERENCES ARTIFACT(PKEY)
#);

struct DBSpectrum
    pkey::Int
    detector::DBDetector
    beamenergy::Float64
    composition::Union{Material,Missing}
    collectedby::DBPerson
    sample::DBSample
    collected::Time
    name::String
    data::Spectrum
end
