



USE HTLN_LandBirds;

SELECT L.LocationName AS Plot, Left(E.EventDateTime,11) AS EventDate, S.SubPlotNumber AS SubPlot

FROM dbo.Plot AS L 

  JOIN dbo.VegetationSamplingEvent AS E
  ON L.ID = E.PlotID
  JOIN dbo.SubPlot AS S
  ON E.ID = S.VegetationSamplingEventID

  
WHERE (E.EventDateTime > CAST('20170101' AS datetime))


ORDER BY Plot, SubPlot, EventDate