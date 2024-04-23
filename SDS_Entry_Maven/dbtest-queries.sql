

Question 1. ->Solution
select SUM(claimed_charge) as totalClaimedCharge
from document
where status = 'EXPORTED';

//--------------------------------------------------------------
Question 2. ->Solution
 select dc.insured_name, dc.insured_address, dc.claimed_charge
    from document dc
    inner join batch bc ON dc.batch_id = bc.customer_id
     where dc.status = 'TO_REPRICE'
     and bc.customer_id IN (1, 2);


