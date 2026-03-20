// frontend_fraud_dashboard/pages/index.js
// Member 5: UI + Fraud Detection

import WorkerDashboard from '../components/WorkerDashboard';
import AdminDashboard from '../components/AdminDashboard';

export default function Home() {
  // This will be the main entry point of the Next.js app.
  // It can have a simple toggle to switch between the worker and admin views.
  return (
    <div>
      <h1>GigShield AI Insurance</h1>
      <WorkerDashboard />
      <AdminDashboard />
    </div>
  );
}
