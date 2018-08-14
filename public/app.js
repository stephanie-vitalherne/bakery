document.getElementById('btn').addEventListener('click', reveal);

function reveal(row){
  row = document.getElementById('home-row');
  row.classList.remove('row-hidden');
  row.classList.add('row-reveal');
  body = document.getElementById('head');
  body.classList.add('blur');
}
