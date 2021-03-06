CREATE TABLE PROJECT (
    PKEY INTEGER PRIMARY KEY AUTOINCREMENT,
    PARENT INTEGER NOT NULL,
    CREATEDBY INTEGER NOT NULL,
    NAME TEXT NOT NULL,
    DESCRIPTION TEXT
);

CREATE INDEX PROJECT_PARENT_IDX ON PROJECT(PARENT);
CREATE INDEX PROJECT_NAME_IDX ON PROJECT(NAME);

INSERT INTO PROJECT ( PKEY, PARENT, CREATEDBY, NAME, DESCRIPTION ) VALUES ( 0, -1, 1, "Root", "Root Project" );
INSERT INTO PROJECT ( PARENT, CREATEDBY, NAME, DESCRIPTION ) VALUES ( 0, 1, "K-ratio Project", "Community Consensus K-ratio Project");
