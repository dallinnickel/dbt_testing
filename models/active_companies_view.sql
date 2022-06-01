SELECT *
  FROM sevenshifts_companies
  WHERE sevenshifts_companies.active = 1
    AND sevenshifts_companies.trial = 0
    AND sevenshifts_companies.cancelled = 0
    AND
      (
        sevenshifts_companies.sevenshifts_company_id IN
          (
            SELECT company_id
            FROM stripe_customers
            WHERE deleted_timestamp is NULL
          )
        OR clover_account = 1
        OR utm_source in
          (
            'adp_run_marketplace',
            'adp_wfn_marketplace',
            'integrated-partners-adp-run'
          )
      )