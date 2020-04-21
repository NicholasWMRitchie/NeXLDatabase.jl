CREATE TABLE MATERIAL (
    PKEY INTEGER PRIMARY KEY AUTOINCREMENT,
    MATNAME TEXT NOT NULL, -- Make material name unique
    MATDESCRIPTION TEXT,
    MATDENSITY REAL,
    MATPEDIGREE TEXT -- Source of compositional data (SRM/stoich/wet chemistry/???)
);

INSERT INTO MATERIAL ( MATNAME, MATDESCRIPTION, MATDENSITY, MATPEDIGREE ) VALUES ( "Unknown", "Unknown material", 0.0, "" );
CREATE INDEX MATNAME_INDEX ON MATERIAL(MATNAME);
