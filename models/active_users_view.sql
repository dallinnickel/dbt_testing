  SELECT *
  FROM sevenshifts_users
  WHERE sevenshifts_users.active = 1
    AND sevenshifts_users.sevenshifts_company_id in
      (
        SELECT sevenshifts_company_id
        FROM {{ref('active_companies_view')}}
      )