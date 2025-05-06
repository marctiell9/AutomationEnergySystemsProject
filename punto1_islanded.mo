model Progetto_AES
  extends AES;
  Modelica.Blocks.Continuous.TransferFunction Cps(a = {2, 1, 0}, b = {9, 0.81, 0.018}) annotation(
    Placement(visible = true, transformation(origin = {-78, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = -1) annotation(
    Placement(visible = true, transformation(origin = {-14, -24}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator(k = 1 / 6.573) annotation(
    Placement(visible = true, transformation(origin = {66, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g(a = {20, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-14, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {26, 6}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp_islanded(duration = 10, height = 5 / 150) annotation(
    Placement(visible = true, transformation(origin = {0, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter sat(uMax = 1, uMin = 0)  annotation(
    Placement(visible = true, transformation(origin = {-46, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(g.y, feedback.u1) annotation(
    Line(points = {{-3, 6}, {17, 6}}, color = {0, 0, 127}));
  connect(integrator.y, gain.u) annotation(
    Line(points = {{77, 6}, {95, 6}, {95, -24}, {-3, -24}}, color = {0, 0, 127}));
  connect(gain.y, Cps.u) annotation(
    Line(points = {{-25, -24}, {-105, -24}, {-105, 6}, {-90, 6}}, color = {0, 0, 127}));
  connect(feedback.y, integrator.u) annotation(
    Line(points = {{35, 6}, {53, 6}}, color = {0, 0, 127}));
  connect(ramp_islanded.y, feedback.u2) annotation(
    Line(points = {{11, 42}, {26, 42}, {26, 14}}, color = {0, 0, 127}));
  connect(Cps.y, sat.u) annotation(
    Line(points = {{-66, 6}, {-58, 6}}, color = {0, 0, 127}));
  connect(sat.y, g.u) annotation(
    Line(points = {{-34, 6}, {-26, 6}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-120, 60}, {100, -40}})),
  version = "");
end Progetto_AES;
