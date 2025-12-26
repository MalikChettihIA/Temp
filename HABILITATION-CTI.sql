select * from TP_USERS t order by ID desc;
select * from TP_BUSINESS_PROFILE t order by ID;

select * from TP_BUSINESS_PROFILE t;
select * from tp_business_profile_action t;
select * from tp_business_profile_process t;
select * from tp_business_profile_widget t;

select * from tp_data_profile t where t.ID = 16;
select * from tp_data_profile_bankaccount t where t.data_profile_id = 16 order by ID desc;
select * from tp_data_profile_ctrp t where t.data_profile_id = 16 order by ID desc;
select * from tp_data_profile_entity t where t.data_profile_id = 16 order by ID desc;
select * from tp_data_profile_ptf t where t.data_profile_id = 16 order by ID desc;


select * from tp_tenant t order by ID desc;
select * from tp_tenant_entity t order by ID desc;
select * from tp_tenant_module t order by ID desc;
select * from tp_module t order by ID desc;

