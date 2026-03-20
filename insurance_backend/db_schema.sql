-- insurance_backend/db_schema.sql
-- Member 4: Insurance Backend

-- This file will contain the SQL statements to create the database schema.

CREATE TABLE workers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) UNIQUE NOT NULL,
    vehicle_type VARCHAR(255),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE policies (
    id SERIAL PRIMARY KEY,
    worker_id INTEGER REFERENCES workers(id),
    week_start_date DATE NOT NULL,
    week_end_date DATE NOT NULL,
    premium_amount NUMERIC(10, 2) NOT NULL,
    coverage_amount NUMERIC(10, 2) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE claims (
    id SERIAL PRIMARY KEY,
    policy_id INTEGER REFERENCES policies(id),
    disruption_type VARCHAR(255) NOT NULL,
    payout_amount NUMERIC(10, 2) NOT NULL,
    status VARCHAR(255) DEFAULT 'pending',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
