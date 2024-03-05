<script>
    export let employee;
  </script>
  
  <div class="employee-card">
    <div class="employee-name"><strong>{employee.first_name} {employee.last_name}</strong></div>
    <div class="employee-email">{employee.email}</div>
    <div class="employee-dob">DOB: {employee.date_of_birth}</div>
  </div>
  
  <style>
    .employee-card {
      border: 1px solid #ddd;
      border-radius: 8px;
      padding: 20px;
      margin-bottom: 20px;
      background-color: #f9f9f9;
    }
    .employee-name {
      font-size: 18px;
      margin-bottom: 10px;
    }
    .employee-email, .employee-dob {
      font-size: 14px;
      color: #666;
    }
  </style>
  