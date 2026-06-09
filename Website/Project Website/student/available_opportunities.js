function openModal(id) {
    document.getElementById(id).style.display = 'block';
  }
  
  function closeModal(id) {
    document.getElementById(id).style.display = 'none';
  }
  
  function apply(btn) {
    btn.style.display = 'none';
    btn.nextElementSibling.style.display = 'block';
  }
  
  function cancel(btn) {
    const box = btn.parentElement;
    box.style.display = 'none';
    box.previousElementSibling.style.display = 'inline-block';
  }
  
  function filterSelection(type) {
    let cards = document.querySelectorAll('.card');
    document.querySelectorAll('.filter-buttons button').forEach(btn => btn.classList.remove('active'));
    event.target.classList.add('active');
  
    cards.forEach(card => {
      if (type === 'all' || card.dataset.type === type) {
        card.classList.add('show');
      } else {
        card.classList.remove('show');
      }
    });
  }
  
  window.onclick = function(event) {
    if (event.target.classList.contains('modal')) {
      event.target.style.display = "none";
    }
  }