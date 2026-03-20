// disruption_trigger_engine/index.js
// Member 3: Parametric Trigger Engine

console.log('Disruption Trigger Engine');

// This service will:
// 1. Continuously monitor data from the api_integration_service.
// 2. Check if any parametric triggers are met (e.g., rain > 10mm/hr).
// 3. If a trigger is met, it will call the insurance_backend to initiate a claim.
// 4. It will also write the disruption event to the shared_data/disruptions.json file.
