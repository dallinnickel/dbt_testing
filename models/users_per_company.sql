SELECT 
    sevenshifts_company_id,
    count(distinct sevenshifts_user_id) as num_users
FROM 
    {{ref('active_users_view')}}
GROUP BY 
    sevenshifts_company_id

