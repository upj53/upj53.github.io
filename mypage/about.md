---
title: About
layout: upj_design
permalink: /about/
---

<div style="margin-top: 50px; ">
<h1>Generate Unique ID</h1>

<div class="mb-3">
  <label for="generateId" class="form-label">ID Generator</label>
  <input type="text" class="form-control" id="genId">
  <div id="genIdHelp" class="form-text">Generate Unique ID</div>
</div>
<button type="submit" class="btn btn-primary"
        style="background: #FF7C36; color:#fff; border: 1px solid #FF7C36;"
        onclick="generateID()">아이디 생성</button>
</div>

<script type="text/javascript">
function generateID() {
  genId.value = " id=\"upj_" + Date.now() + "\"";
  genId.focus();
  genId.select();
}
</script>