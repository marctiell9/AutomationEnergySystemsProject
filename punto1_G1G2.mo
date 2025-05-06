model Progetto_AES
  extends AES;
  Modelica.Blocks.Continuous.TransferFunction Cp1(a = {1}, b = {0.0014}) annotation(
    Placement(visible = true, transformation(origin = {-150, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator Cs(k = 0.0222) annotation(
    Placement(visible = true, transformation(origin = {-150, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback Pbal annotation(
    Placement(visible = true, transformation(origin = {112, -20}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta1(k = 2/3) annotation(
    Placement(visible = true, transformation(origin = {-110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain Pn1(k = 100e6) annotation(
    Placement(visible = true, transformation(origin = {40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta2(k = 1/3) annotation(
    Placement(visible = true, transformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction Cp2(a = {1}, b = {3.35}) annotation(
    Placement(visible = true, transformation(origin = {-150, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6) annotation(
    Placement(visible = true, transformation(origin = {42, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain fb(k = -1) annotation(
    Placement(visible = true, transformation(origin = {64, -86}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add as1 annotation(
    Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator N(k = 1 /(30000*314^2)) annotation(
    Placement(visible = true, transformation(origin = {166, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g1(a = {10, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {4, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {4, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add Ptot annotation(
    Placement(visible = true, transformation(origin = {72, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add as2 annotation(
    Placement(visible = true, transformation(origin = {-54, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(duration = 10, height = 5e6)  annotation(
    Placement(visible = true, transformation(origin = {60, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter sat(uMax = 1, uMin = 0) annotation(
    Placement(visible = true, transformation(origin = {-37, -1}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax = 1, uMin = 0) annotation(
    Placement(visible = true, transformation(origin = {-25, -41}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
equation
  connect(g1.y, Pn1.u) annotation(
    Line(points = {{15, 0}, {28, 0}}, color = {0, 0, 127}));
  connect(Pbal.y, N.u) annotation(
    Line(points = {{121, -20}, {154, -20}}, color = {0, 0, 127}));
  connect(g2.y, Pn2.u) annotation(
    Line(points = {{15, -40}, {30, -40}}, color = {0, 0, 127}));
  connect(beta1.y, as1.u1) annotation(
    Line(points = {{-110, 39}, {-110, 6}, {-102, 6}}, color = {0, 0, 127}));
  connect(Cp1.u, Cs.u) annotation(
    Line(points = {{-162, -6}, {-180, -6}, {-180, 80}, {-162, 80}}, color = {0, 0, 127}));
  connect(beta2.y, as2.u1) annotation(
    Line(points = {{-70, 39}, {-70, -34}, {-66, -34}}, color = {0, 0, 127}));
  connect(Cp2.u, Cp1.u) annotation(
    Line(points = {{-162, -46}, {-180, -46}, {-180, -6}, {-162, -6}}, color = {0, 0, 127}));
  connect(Pn1.y, Ptot.u1) annotation(
    Line(points = {{51, 0}, {51, -14}, {60, -14}}, color = {0, 0, 127}));
  connect(Cs.y, beta1.u) annotation(
    Line(points = {{-138, 80}, {-110, 80}, {-110, 62}}, color = {0, 0, 127}));
  connect(N.y, fb.u) annotation(
    Line(points = {{177, -20}, {177, -86}, {76, -86}}, color = {0, 0, 127}));
  connect(fb.y, Cp2.u) annotation(
    Line(points = {{53, -86}, {-180, -86}, {-180, -46}, {-162, -46}}, color = {0, 0, 127}));
  connect(Cp2.y, as2.u2) annotation(
    Line(points = {{-139, -46}, {-66, -46}}, color = {0, 0, 127}));
  connect(Cp1.y, as1.u2) annotation(
    Line(points = {{-138, -6}, {-102, -6}}, color = {0, 0, 127}));
  connect(Pn2.y, Ptot.u2) annotation(
    Line(points = {{53, -40}, {53, -26}, {60, -26}}, color = {0, 0, 127}));
  connect(Cs.y, beta2.u) annotation(
    Line(points = {{-138, 80}, {-70, 80}, {-70, 62}}, color = {0, 0, 127}));
  connect(ramp.y, Pbal.u2) annotation(
    Line(points = {{72, 58}, {112, 58}, {112, -12}}, color = {0, 0, 127}));
  connect(Ptot.y, Pbal.u1) annotation(
    Line(points = {{84, -20}, {104, -20}}, color = {0, 0, 127}));
  connect(as2.y, limiter.u) annotation(
    Line(points = {{-42, -40}, {-39, -40}, {-39, -41}, {-36, -41}}, color = {0, 0, 127}));
  connect(as1.y, sat.u) annotation(
    Line(points = {{-78, 0}, {-48, 0}}, color = {0, 0, 127}));
  connect(sat.y, g1.u) annotation(
    Line(points = {{-28, 0}, {-8, 0}}, color = {0, 0, 127}));
  connect(limiter.y, g2.u) annotation(
    Line(points = {{-16, -40}, {-8, -40}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-180, 100}, {180, -100}})),
  version = "");
end Progetto_AES;
