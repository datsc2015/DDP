DDP Assignment- Rstudio Presentation
========================================================
author: GW
date: 8/28/2016
autosize: true

The power of t-test: introduction
========================================================

Power of a test refers to the probability of rejecting the null hypothesis when it is not correct.

- This Rshiny is used for power and sample size calculation
- Required parameters: Delta, Sample size (n)
- Required packages: "pwr" or "powerSurvEpi"


The power of t-test: inputs
========================================================
Select Delta and Sample Size: http://127.0.0.1:5151/
<!--html_preserve--><div class="container-fluid">
<h2>Power of t-test</h2>
<div class="row">
<div class="col-sm-4">
<form class="well">
<div class="form-group shiny-input-container">
<label class="control-label" for="Delta">Delta:</label>
<input class="js-range-slider" id="Delta" data-min="0" data-max="1" data-from="0.8" data-step="0.01" data-grid="true" data-grid-num="10" data-grid-snap="false" data-prettify-separator="," data-keyboard="true" data-keyboard-step="1" data-drag-interval="true" data-data-type="number"/>
</div>
<div class="form-group shiny-input-container">
<label class="control-label" for="ssize">Sample Size(n):</label>
<input class="js-range-slider" id="ssize" data-min="2" data-max="100" data-from="20" data-step="1" data-grid="true" data-grid-num="9.8" data-grid-snap="false" data-prettify-separator="," data-keyboard="true" data-keyboard-step="1.02040816326531" data-drag-interval="true" data-data-type="number"/>
</div>
</form>
</div>
<div class="col-sm-8">
<div id="distPlot" class="shiny-plot-output" style="width: 100% ; height: 400px"></div>
</div>
</div>
</div><!--/html_preserve-->

The power of t-test: Summary (Delta=1)
========================================================

```
  nvals    powvals
1     2 0.09131778
2     3 0.15723610
3     4 0.22246334
4     5 0.28592760
5     6 0.34715648
6     7 0.40569712
```
***

```
   nvals   powvals
94    95 0.9999995
95    96 0.9999996
96    97 0.9999997
97    98 0.9999997
98    99 0.9999998
99   100 0.9999998
```

Plot of power curve (Delta=1)
========================================================

![plot of chunk unnamed-chunk-4](DDP_assignment-figure/unnamed-chunk-4-1.png)

***

![plot of chunk unnamed-chunk-5](DDP_assignment-figure/unnamed-chunk-5-1.png)




