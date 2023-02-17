---
title: About
layout: upj_design
permalink: /about/
---

<h4 style="font-weight:bold; margin-top: 50px; ">Generate Unique ID</h4>

<label>ID Generator</label>
<input type="text" class="form-control" id="genId">
<p id="genIdHelp" class="form-text">Generate Unique ID</p>
<button type="button" class="btn btn-primary"
        style="background: #FF7C36; color:#fff; border: 1px solid #FF7C36;"
        onclick="generateID(1)">Kramdown ID</button>

<script type="text/javascript">
function generateID(type) {
  const genId = document.getElementById('genId');
  const genIdHelp = document.getElementById('genIdHelp');
  let strId = "upj_" + Date.now() + "";
  let strInputValue;
  switch (type) {
    case 1:
      strInputValue = "{: #" + strId + "}";
      break;
    case 2:
      strId = "";
      break;
    default:
      strId = "";
      break;
  }
  genId.value = strInputValue;
  genIdHelp.innerText = strId;
  genId.focus();
  genId.select();
}
</script>

<!-- Modal 
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <p class="modal-title fs-5" id="exampleModalLabel">Generate Unique ID</p>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <script type="text/javascript">
          function generateID(type) {
            // genId.value = " id=\"upj_" + Date.now() + "\"";
            const genId = document.getElementById('genId');
            const genIdHelp = document.getElementById('genIdHelp');
            let strId = "upj_" + Date.now() + "";
            let strInputValue;
            switch (type) {
              case 1:
                strInputValue = "{: #" + strId + "}";
                break;
              case 2:
                strId = "";
                break;
              default:
                strId = "";
                break;
            }
            genId.value = strInputValue;
            genIdHelp.innerText = strId;
            genId.focus();
            genId.select();
          }
        </script>
        <div class="mb-3">
          <label class="form-label">ID Generator</label>
          <input type="text" class="form-control" id="genId">
          <div id="genIdHelp" class="form-text">Generate Unique ID</div>
        </div>
        <button type="button" class="btn btn-primary"
                style="background: #FF7C36; color:#fff; border: 1px solid #FF7C36;"
                onclick="generateID(1)">Kramdown ID
        </button>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
-->