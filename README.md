# git-popularity-frontend

The frontend for Github populariy flutter mobile app.

## Development

Ensure [git-popularity-backend](https://github.com/dordep19/git-popularity-backend) is serving on 127.0.0.1 before building app.

Flutter app is developed using [Android Studio](https://developer.android.com/studio?gclid=Cj0KCQjwh_eFBhDZARIsALHjIKevbwnPSUMGx0A5-p8l_vtc-jxmzlyTZCbG1DgDQJlKgreICiXYI_kaAvK0EALw_wcB&gclsrc=aw.ds) and tested using Open Android emulator.

<div class="row">
  <div class="column">
    <img src="views/home.png" alt="Home" width="300">
  </div>
  <div class="column">
    <img src="views/stars.png" alt="Stars" width="300">
  </div>
  <div class="column">
    <img src="views/forks.png" alt="Forks" width="300">
  </div>
</div>

<html>
<head>
<style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</head>
<body>

<h2>Images Side by Side</h2>
<p>How to create side-by-side images with the CSS float property:</p>

<div class="row">
  <div class="column">
    <img src="img_snow.jpg" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="img_forest.jpg" alt="Forest" style="width:100%">
  </div>
  <div class="column">
    <img src="img_mountains.jpg" alt="Mountains" style="width:100%">
  </div>
</div>

</body>
</html>
