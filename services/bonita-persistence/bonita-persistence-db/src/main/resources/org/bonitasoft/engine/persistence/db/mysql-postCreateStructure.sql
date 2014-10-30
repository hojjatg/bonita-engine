-- ------------------------------------------------ Index -----------------------------------------------
CREATE INDEX fk_event_trigger_instance_flownode_instanceId_idx ON event_trigger_instance(eventInstanceId ASC, tenantid ASC);
CREATE INDEX fk_process_definition_categoryId_idx ON process_definition(categoryId ASC, tenantid ASC);
CREATE INDEX fk_arch_flownode_instance_actorId_idx ON arch_flownode_instance(actorId ASC, tenantid ASC);

CREATE INDEX fk_actor_tenantId_idx ON actor(tenantid ASC);
CREATE INDEX fk_actormember_actorId_idx ON actormember(actorId ASC, tenantid ASC);
CREATE INDEX fk_actormember_user_Id_idx ON actormember(userId ASC, tenantid ASC);
CREATE INDEX fk_actormember_roleId_idx ON actormember(roleId ASC, tenantid ASC);
CREATE INDEX fk_actormember_group_Id_idx ON actormember(groupId ASC, tenantid ASC);
CREATE INDEX fk_actormember_tenantId_idx ON actormember(tenantid ASC);
CREATE INDEX fk_breakpoint_tenantId_idx ON breakpoint(tenantid ASC);
CREATE INDEX fk_breakpoint_process_definitionId_idx ON breakpoint(def_id ASC, tenantid ASC);
CREATE INDEX fk_breakpoint_process_instanceId_idx ON breakpoint(inst_id ASC, tenantid ASC);
CREATE INDEX fk_data_instance_tenantId_idx ON data_instance(tenantid ASC);
CREATE INDEX fk_data_mapping_data_instanceId_idx ON data_mapping(dataInstanceId ASC, tenantid ASC);
CREATE INDEX fk_data_mapping_tenantId_idx ON data_mapping(tenantid ASC);
CREATE INDEX fk_dependency_tenantId_idx ON dependency(tenantid ASC);
CREATE INDEX fk_dependencymapping_tenantId_idx ON dependencymapping(tenantid ASC);
CREATE INDEX fk_document_tenantId_idx ON document(tenantid ASC);
CREATE INDEX fk_external_identity_mapping_user_Id_idx ON external_identity_mapping(userId ASC, tenantid ASC);
CREATE INDEX fk_external_identity_mapping_roleId_idx ON external_identity_mapping(roleId ASC, tenantid ASC);
CREATE INDEX fk_external_identity_mapping_group_Id_idx ON external_identity_mapping(groupId ASC, tenantid ASC);
CREATE INDEX fk_external_identity_mapping_tenantId_idx ON external_identity_mapping(tenantid ASC);
CREATE INDEX fk_group__tenantId_idx ON group_(tenantid ASC);
CREATE INDEX fk_role_tenantId_idx ON role(tenantid ASC);
CREATE INDEX fk_user__tenantId_idx ON user_(tenantid ASC);
CREATE INDEX fk_custom_usr_inf_def_tenantId_idx ON custom_usr_inf_def(tenantid ASC);
CREATE INDEX fk_custom_usr_inf_val_tenantId_idx ON custom_usr_inf_val(tenantid ASC);
CREATE INDEX fk_user_membership_user_Id_idx ON user_membership(userId ASC, tenantid ASC);
CREATE INDEX fk_user_membership_roleId_idx ON user_membership(roleId ASC, tenantid ASC);
CREATE INDEX fk_user_membership_group_Id_idx ON user_membership(groupId ASC, tenantid ASC);
CREATE INDEX fk_user_membership_tenantId_idx ON user_membership(tenantid ASC);
CREATE INDEX fk_queriable_log_tenantId_idx ON queriable_log(tenantid ASC);
CREATE INDEX fk_queriablelog_p_tenantId_idx ON queriablelog_p(tenantid ASC);
CREATE INDEX fk_arch_document_mapping_arch_process_instanceId_idx ON arch_document_mapping(processinstanceid ASC, tenantid ASC);
CREATE INDEX fk_arch_document_mapping_tenantId_idx ON arch_document_mapping(tenantid ASC);
CREATE INDEX fk_document_mapping_process_instanceId_idx ON document_mapping(processinstanceid ASC, tenantid ASC);
CREATE INDEX fk_document_mapping_tenantId_idx ON document_mapping(tenantid ASC);
CREATE INDEX fk_process_definition_tenantId_idx ON process_definition(tenantid ASC);
CREATE INDEX fk_process_comment_process_instanceId_idx ON process_comment(processInstanceId ASC, tenantid ASC);
CREATE INDEX fk_process_comment_user_Id_idx ON process_comment(userId ASC, tenantid ASC);
CREATE INDEX fk_process_comment_tenantId_idx ON process_comment(tenantid ASC);
CREATE INDEX fk_process_instance_tenantId_idx ON process_instance(tenantid ASC);
CREATE INDEX fk_process_instance_process_definitionId_idx ON process_instance(processDefinitionId ASC, tenantid ASC);
CREATE INDEX fk_flownode_instance_actorId_idx ON flownode_instance(actorId ASC, tenantid ASC);
CREATE INDEX fk_flownode_instance_tenantId_idx ON flownode_instance(tenantid ASC);
CREATE INDEX fk_connector_instance_tenantId_idx ON connector_instance(tenantid ASC);
CREATE INDEX fk_event_trigger_instance_tenantId_idx ON event_trigger_instance(tenantid ASC);
CREATE INDEX fk_waiting_event_flownode_instanceId_idx ON waiting_event(flowNodeInstanceId ASC, tenantid ASC);
CREATE INDEX fk_waiting_event_tenantId_idx ON waiting_event(tenantid ASC);
CREATE INDEX fk_waiting_event_process_definitionId_idx ON waiting_event(processDefinitionId ASC, tenantid ASC);
CREATE INDEX fk_message_instance_tenantId_idx ON message_instance(tenantid ASC);
CREATE INDEX fk_message_instance_process_definitionId_idx ON message_instance(processDefinitionId ASC, tenantid ASC);
CREATE INDEX fk_pending_mapping_user_Id_idx ON pending_mapping(userId ASC, tenantid ASC);
CREATE INDEX fk_pending_mapping_actorId_idx ON pending_mapping(actorId ASC, tenantid ASC);
CREATE INDEX fk_pending_mapping_tenantId_idx ON pending_mapping(tenantid ASC);
CREATE INDEX fk_pending_mapping_flownode_instanceId_idx ON pending_mapping(activityId ASC, tenantid ASC);
CREATE INDEX fk_hidden_activity_user_Id_idx ON hidden_activity(userId ASC, tenantid ASC);
CREATE INDEX fk_hidden_activity_tenantId_idx ON hidden_activity(tenantid ASC);
CREATE INDEX fk_arch_process_instance_process_definitionId_idx ON arch_process_instance(processDefinitionId ASC, tenantid ASC);
CREATE INDEX fk_arch_process_instance_sourceObjectId_idx ON arch_process_instance(sourceObjectId ASC, tenantid ASC);
CREATE INDEX fk_arch_process_instance_tenantId_idx ON arch_process_instance(tenantid ASC);
CREATE INDEX fk_arch_flownode_instance_tenantId_idx ON arch_flownode_instance(tenantid ASC);
CREATE INDEX fk_profile_tenantId_idx ON profile(tenantId ASC);
CREATE INDEX fk_profile_Id_idx ON profile(id ASC, tenantId ASC);
CREATE INDEX fk_profileentry_profileId_idx ON profileentry(profileId ASC, tenantId ASC);
CREATE INDEX fk_profileentry_tenantId_idx ON profileentry(tenantId ASC);
CREATE INDEX fk_profilemember_user_Id_idx ON profilemember(userId ASC, tenantId ASC);
CREATE INDEX fk_profilemember_group_Id_idx ON profilemember(groupId ASC, tenantId ASC);
CREATE INDEX fk_profilemember_roleId_idx ON profilemember(roleId ASC, tenantId ASC);
CREATE INDEX fk_profilemember_tenantId_idx ON profilemember(tenantId ASC);
CREATE INDEX fk_profilemember_profileId_idx ON profilemember(profileId ASC, tenantId ASC);
CREATE INDEX fk_job_desc_tenantId_idx ON job_desc(tenantid ASC);
CREATE INDEX fk_job_param_tenantId_idx ON job_param(tenantid ASC);
CREATE INDEX fk_processsupervisor_user_Id_idx ON processsupervisor(userId ASC);
CREATE INDEX fk_processsupervisor_group_Id_idx ON processsupervisor(groupId ASC);
CREATE INDEX fk_processsupervisor_roleId_idx ON processsupervisor(roleId ASC);
CREATE INDEX fk_processsupervisor_tenantId_idx ON processsupervisor(tenantid ASC);
CREATE INDEX fk_processsupervisor_process_definitionId_idx ON processsupervisor(processDefId ASC, tenantid ASC);
CREATE INDEX fk_category_tenantId_idx ON category(tenantid ASC);
CREATE INDEX fk_command_tenantId_idx ON command(tenantid ASC);
-- CREATE INDEX fk_migration_plan_tenantId_idx ON migration_plan(tenantid ASC);
CREATE INDEX fk_processcategorymapping_process_instanceId_idx ON processcategorymapping(processid ASC, tenantid ASC);
CREATE INDEX fk_processcategorymapping_tenantId_idx ON processcategorymapping(tenantid ASC);
CREATE INDEX fk_arch_process_comment_user_Id_idx ON arch_process_comment(userId ASC, tenantid ASC);
CREATE INDEX fk_arch_process_comment_arch_process_instanceId_idx ON arch_process_comment(processInstanceId ASC, tenantid ASC);
CREATE INDEX fk_arch_process_comment_tenantId_idx ON arch_process_comment(tenantid ASC);
CREATE INDEX fk_arch_data_instance_tenantId_idx ON arch_data_instance(tenantid ASC);
CREATE INDEX fk_arch_data_mapping_tenantId_idx ON arch_data_mapping(tenantid ASC);
CREATE INDEX fk_arch_transition_instance_tenantId_idx ON arch_transition_instance(tenantid ASC);


-- ------------------------------------------------ Foreign Keys -----------------------------------------------
ALTER TABLE actor ADD CONSTRAINT fk_actor_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE actormember ADD CONSTRAINT fk_actormember_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE breakpoint ADD CONSTRAINT fk_breakpoint_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
-- ALTER TABLE queriable_log ADD CONSTRAINT fk_queriable_log_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE queriablelog_p ADD CONSTRAINT fk_queriablelog_p_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE category ADD CONSTRAINT fk_category_tenantId FOREIGN KEY (tenantid) REFERENCES tenant (id);
ALTER TABLE command ADD CONSTRAINT fk_command_tenantId FOREIGN KEY (tenantid) REFERENCES tenant (id);
ALTER TABLE connector_instance ADD CONSTRAINT fk_connector_instance_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE data_instance ADD CONSTRAINT fk_data_instance_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE data_mapping ADD CONSTRAINT fk_data_mapping_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE dependency ADD CONSTRAINT fk_dependency_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE dependencymapping ADD CONSTRAINT fk_dependencymapping_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE document ADD CONSTRAINT fk_document_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE document_mapping ADD CONSTRAINT fk_document_mapping_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE document_mapping ADD CONSTRAINT fk_docmap_docid FOREIGN KEY (tenantid, documentid) REFERENCES document(tenantid, id) ON DELETE CASCADE;
ALTER TABLE event_trigger_instance ADD CONSTRAINT fk_event_trigger_instance_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE external_identity_mapping ADD CONSTRAINT fk_external_identity_mapping_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE flownode_instance ADD CONSTRAINT fk_flownode_instance_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE group_ ADD CONSTRAINT fk_group__tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE hidden_activity ADD CONSTRAINT fk_hidden_activity_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
-- ALTER TABLE job_desc ADD CONSTRAINT fk_job_desc_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE job_param ADD CONSTRAINT fk_job_param_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE message_instance ADD CONSTRAINT fk_message_instance_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
-- ALTER TABLE migration_plan ADD CONSTRAINT fk_migration_plan_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE custom_usr_inf_def ADD CONSTRAINT fk_custom_usr_inf_def_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE custom_usr_inf_val ADD CONSTRAINT fk_custom_usr_inf_val_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE pending_mapping ADD CONSTRAINT fk_pending_mapping_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE processcategorymapping ADD CONSTRAINT fk_processcategorymapping_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE process_comment ADD CONSTRAINT fk_process_comment_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE process_definition ADD CONSTRAINT fk_process_definition_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE process_instance ADD CONSTRAINT fk_process_instance_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE processsupervisor ADD CONSTRAINT fk_processsupervisor_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE profile ADD CONSTRAINT fk_profile_tenantId FOREIGN KEY (tenantId) REFERENCES tenant(id);
ALTER TABLE profileentry ADD CONSTRAINT fk_profileentry_tenantId FOREIGN KEY (tenantId) REFERENCES tenant(id);
ALTER TABLE profilemember ADD CONSTRAINT fk_profilemember_tenantId FOREIGN KEY (tenantId) REFERENCES tenant(id);
ALTER TABLE multi_biz_data ADD CONSTRAINT fk_multi_biz_data_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE ref_biz_data_inst ADD CONSTRAINT fk_ref_biz_data_inst_tenantId FOREIGN KEY (tenantId) REFERENCES tenant(id);
ALTER TABLE role ADD CONSTRAINT fk_role_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE theme ADD CONSTRAINT fk_theme_tenantId FOREIGN KEY (tenantId) REFERENCES tenant(id);
ALTER TABLE user_ ADD CONSTRAINT fk_user__tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE user_membership ADD CONSTRAINT fk_user_membership_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE waiting_event ADD CONSTRAINT fk_waiting_event_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);

ALTER TABLE profileentry ADD CONSTRAINT fk_profileentry_profileId FOREIGN KEY (profileId, tenantId) REFERENCES profile(id, tenantId);
ALTER TABLE profilemember ADD CONSTRAINT fk_profilemember_profileId FOREIGN KEY (profileId, tenantId) REFERENCES profile(id, tenantId);

-- business application
ALTER TABLE business_app ADD CONSTRAINT fk_app_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE business_app ADD CONSTRAINT fk_app_profileId FOREIGN KEY (tenantid, profileId) REFERENCES profile (tenantid, id);
ALTER TABLE business_app ADD CONSTRAINT fk_app_homepageId FOREIGN KEY (tenantid, homePageId) REFERENCES business_app_page (tenantid, id);
ALTER TABLE business_app_page ADD CONSTRAINT fk_app_page_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE business_app_page ADD CONSTRAINT fk_bus_app_id FOREIGN KEY (tenantid, applicationId) REFERENCES business_app (tenantid, id) ON DELETE CASCADE;
ALTER TABLE business_app_page ADD CONSTRAINT fk_page_id FOREIGN KEY (tenantid, pageId) REFERENCES page (tenantid, id);

ALTER TABLE business_app_menu ADD CONSTRAINT fk_app_menu_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);

-- cannot have both fk_app_menu_appId and fk_app_menu_pageId because this create to path for deletion of business_app_menu elements:
-- business_app -> business_app_menu
-- business_app -> business_app_page -> business_app_menu
-- this is not allowed in SQL Server
ALTER TABLE business_app_menu ADD CONSTRAINT fk_app_menu_appId FOREIGN KEY (tenantid, applicationId) REFERENCES business_app (tenantid, id);
ALTER TABLE business_app_menu ADD CONSTRAINT fk_app_menu_pageId FOREIGN KEY (tenantid, applicationPageId) REFERENCES business_app_page (tenantid, id);

ALTER TABLE business_app_menu ADD CONSTRAINT fk_app_menu_parentId FOREIGN KEY (tenantid, parentId) REFERENCES business_app_menu (tenantid, id);

--  ------------------------ Foreign Keys to disable if archiving is on another BD ------------------
ALTER TABLE arch_document_mapping ADD CONSTRAINT fk_arch_document_mapping_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE arch_document_mapping ADD CONSTRAINT fk_archdocmap_docid FOREIGN KEY (tenantid, documentid) REFERENCES document(tenantid, id) ON DELETE CASCADE;
ALTER TABLE arch_flownode_instance ADD CONSTRAINT fk_arch_flownode_instance_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE arch_process_comment ADD CONSTRAINT fk_arch_process_comment_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE arch_process_instance ADD CONSTRAINT fk_arch_process_instance_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE arch_transition_instance ADD CONSTRAINT fk_arch_transition_instance_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE arch_data_instance ADD CONSTRAINT fk_arch_data_instance_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE arch_data_mapping ADD CONSTRAINT fk_arch_data_mapping_tenantId FOREIGN KEY (tenantid) REFERENCES tenant(id);
ALTER TABLE arch_process_comment ADD CONSTRAINT fk_arch_process_comment_arch_process_instanceId FOREIGN KEY (processInstanceId, tenantid) REFERENCES arch_process_instance (sourceObjectId, tenantid);
-- ALTER TABLE arch_document_mapping ADD CONSTRAINT fk_arch_document_mapping_arch_process_instanceId FOREIGN KEY (processinstanceid, tenantid) REFERENCES arch_process_instance (sourceObjectId, tenantid);
