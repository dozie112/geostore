/*GS_ATTRUBUTE*/
ALTER TABLE GEOSTORE.GS_ATTRIBUTE RENAME COLUMN DATE TO ATTRIBUTE_DATE;
ALTER TABLE GEOSTORE.GS_ATTRIBUTE RENAME COLUMN NUMBER TO ATTRIBUTE_NUMBER;
ALTER TABLE GEOSTORE.GS_ATTRIBUTE RENAME COLUMN STRING TO ATTRIBUTE_TEXT;
ALTER TABLE GEOSTORE.GS_ATTRIBUTE RENAME COLUMN TYPE TO ATTRIBUTE_TYPE;

create index idx_attribute_text on GEOSTORE.GS_ATTRIBUTE (ATTRIBUTE_TEXT);
create index idx_attribute_type on GEOSTORE.GS_ATTRIBUTE (ATTRIBUTE_TYPE);
create index idx_attribute_date on GEOSTORE.GS_ATTRIBUTE (ATTRIBUTE_DATE);
create index idx_attribute_number on GEOSTORE.GS_ATTRIBUTE (ATTRIBUTE_NUMBER);

/*GS_RESOURCE*/
ALTER TABLE GEOSTORE.GS_RESOURCE ADD CONSTRAINT NAME_UNIQUE UNIQUE(NAME);

/*GS_STORED_DATA*/
ALTER TABLE GEOSTORE.GS_STORED_DATA RENAME COLUMN DATA TO STORED_DATA;

/*GS_USER*/
ALTER TABLE GEOSTORE.GS_USER RENAME COLUMN ROLE TO USER_ROLE;

create index idx_user_role on GEOSTORE.GS_USER (USER_ROLE);