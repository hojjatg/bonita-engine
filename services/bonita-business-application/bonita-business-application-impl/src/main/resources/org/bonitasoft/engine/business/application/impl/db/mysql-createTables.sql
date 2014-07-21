CREATE TABLE business_app (
  tenantId BIGINT NOT NULL,
  id BIGINT NOT NULL,
  name VARCHAR(50) NOT NULL,
  version VARCHAR(50) NOT NULL,
  path VARCHAR(255) NOT NULL,
  description TEXT,
  UNIQUE (tenantId, name, version),
  PRIMARY KEY (tenantId, id)
) ENGINE = INNODB;

CREATE TABLE business_app_page (
  tenantId BIGINT NOT NULL,
  id BIGINT NOT NULL,
  businessAppId BIGINT NOT NULL,
  pageId BIGINT NOT NULL,
  UNIQUE (tenantId, businessAppId, pageId),
  PRIMARY KEY (tenantId, id)
) ENGINE = INNODB;

-- forein keys are create in bonita-persistence-db/postCreateStructure.sql