// integration_layer/api_gateway.js

console.log('API Gateway');

// This service will act as a single entry point for all frontend requests.
// It will route requests to the appropriate backend service.
// This simplifies the frontend code and provides a level of abstraction.
// Example routes:
// - /api/worker -> insurance_backend
// - /api/risk -> risk_engine_ai
// - /api/data -> api_integration_service
