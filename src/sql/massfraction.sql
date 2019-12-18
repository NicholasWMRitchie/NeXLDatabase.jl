CREATE TABLE MASSFRACTION (
    MATROWID INTEGER NOT NULL,
    MFZ INTEGER NOT NULL, -- Atomic number
    MFC REAL NOT NULL, -- Mass fraction
    MFUC REAL, -- Uncertainty in c (1 σ) or NULL if unknown
    MFA REAL, -- atomic weight or NULL if default
    FOREIGN KEY(MATROWID) REFERENCES MATERIAL(ROWID),
    PRIMARY KEY(MATROWID, MFZ)
);
