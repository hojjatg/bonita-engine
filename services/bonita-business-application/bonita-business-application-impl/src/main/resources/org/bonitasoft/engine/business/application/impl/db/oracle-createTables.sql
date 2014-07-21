CREATE TABLE business_app (
  tenantId NUMBER(19, 0) NOT NULL,
  id NUMBER(19, 0) NOT NULL,
  name VARCHAR2(50) NOT NULL,
  version VARCHAR2(50) NOT NULL,
  path VARCHAR2(255) NOT NULL,
  description VARCHAR22(1024),
  UNIQUE (tenantId, name, version),
  PRIMARY KEY (tenantId, id)
);

CREATE TABLE business_app_page (
  tenantId NUMBER(19, 0) NOT NULL,
  id NUMBER(19, 0) NOT NULL,
  businessAppId NUMBER(19, 0) NOT NULL,
  pageId NUMBER(19, 0) NOT NULL,
  UNIQUE (tenantId, businessAppId, pageId),
  PRIMARY KEY (tenantId, id)
);

