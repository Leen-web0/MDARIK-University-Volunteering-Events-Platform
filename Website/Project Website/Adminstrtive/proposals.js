function openModal(title, partner) {
  document.getElementById('modalTitle').innerText = title;
  document.getElementById('modalPartner').innerText = "Partner: " + partner;
  document.getElementById('detailsModal').style.display = "block";
}

function closeModal() {
  document.getElementById('detailsModal').style.display = "none";
}

window.onclick = function(event) {
  const modal = document.getElementById('detailsModal');
  if (event.target == modal) {
    modal.style.display = "none";
  }
}