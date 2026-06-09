// Line Chart
const lineCtx = document.getElementById('lineChart').getContext('2d');
new Chart(lineCtx, {
  type: 'line',
  data: {
    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
    datasets: [{
      label: 'Participants',
      data: [150, 200, 180, 220, 300, 250],
      borderColor: '#4CAF50',
      backgroundColor: 'rgba(76, 175, 80, 0.1)',
      fill: true,
      tension: 0.3
    }]
  },
  options: {
    responsive: true
  }
});

// Pie Chart
const pieCtx = document.getElementById('pieChart').getContext('2d');
new Chart(pieCtx, {
  type: 'pie',
  data: {
    labels: ['Engineering', 'Science', 'Business', 'Arts'],
    datasets: [{
      data: [40000, 25000, 20000, 15000],
      backgroundColor: ['#4CAF50', '#2196F3', '#FFC107', '#FF5722']
    }]
  },
  options: {
    responsive: true
  }
});

// Bar Chart
const barCtx = document.getElementById('barChart').getContext('2d');
new Chart(barCtx, {
  type: 'bar',
  data: {
    labels: ['Approved', 'Rejected'],
    datasets: [{
      label: 'Events',
      data: [35, 10],
      backgroundColor: ['#28a745', '#dc3545']
    }]
  },
  options: {
    responsive: true,
    scales: {
      y: {
        beginAtZero: true
      }
    }
  }
});