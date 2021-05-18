document.getElementById("tooltip-Btn").addEventListener("click", function() {
  document.getElementById('tooltipModal').style.display = 'flex';
  document.getElementById('close_modal').style.display = 'block';
});

document.getElementById("close_modal").addEventListener("click", function() {
  document.getElementById('tooltipModal').style.display = 'none';
  document.getElementById('close_modal').style.display = 'none';
  document.getElementById('modalTitle').innerHTML = 'Game Meter Tooltip';
  document.getElementById('actionBtn').style.display = 'block';
  document.getElementById('createForm').style.display = 'none';
});

document.getElementById("createGame").addEventListener("click", function() {
  document.getElementById('modalTitle').innerHTML = 'ADD NEW GAME';
  document.getElementById('actionBtn').style.display = 'none';
  document.getElementById('createForm').style.display = 'flex';
}); 

setTimeout(function(){ document.getElementById('preloader').style.opacity = 0; 
setTimeout(function(){ document.getElementById('preloader').style.display = 'none'; }, 1000);}, 3000);
