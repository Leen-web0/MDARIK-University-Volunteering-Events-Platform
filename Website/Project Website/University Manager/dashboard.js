// Pie Chart
const pieCtx = document.getElementById('pieChart').getContext('2d');
new Chart(pieCtx, {
  type: 'pie',
  data: {
    labels: ['Pending', 'Approved', 'Rejected'],
    datasets: [{
      label: 'Events',
      data: [12, 27, 8],
      backgroundColor: ['#ffc107', '#28a745', '#dc3545']
    }]
  }
});

// Bar Chart
const barCtx = document.getElementById('barChart').getContext('2d');
new Chart(barCtx, {
  type: 'bar',
  data: {
    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
    datasets: [{
      label: 'Budget Allocated (in $K)',
      data: [50, 75, 60, 90, 85, 110],
      backgroundColor: '#007bff'
    }]
  },
  options: {
    responsive: true,
    scales: {
      y: { beginAtZero: true }
    }
  }
});