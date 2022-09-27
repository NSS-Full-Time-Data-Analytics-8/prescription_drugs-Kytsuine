SELECT prescriber.npi, nppes_provider_first_name, nppes_provider_last_org_name, specialty_description, SUM(total_claim_count) AS total_claims
FROM prescription
INNER JOIN prescriber ON prescriber.npi = prescription.npi
GROUP BY prescriber.npi, nppes_provider_first_name, nppes_provider_last_org_name, specialty_description
ORDER BY total_claims DESC;