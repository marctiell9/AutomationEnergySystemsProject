model Progetto_AES
  extends AES;
  Modelica.Blocks.Continuous.TransferFunction Cp1(a = {1}, b = {0.91}) annotation(
    Placement(visible = true, transformation(origin = {-150, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator Cs(k = 0.023) annotation(
    Placement(visible = true, transformation(origin = {-150, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback Pbal annotation(
    Placement(visible = true, transformation(origin = {162, -42}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta1(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain Pn1(k = 100e6) annotation(
    Placement(visible = true, transformation(origin = {68, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta2(k = 0.2) annotation(
    Placement(visible = true, transformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction Cp2(a = {1}, b = {4.773}) annotation(
    Placement(visible = true, transformation(origin = {-150, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6) annotation(
    Placement(visible = true, transformation(origin = {70, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain fb(k = -1) annotation(
    Placement(visible = true, transformation(origin = {72, -140}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add as1 annotation(
    Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator N(k = 1 /(40000*314^2)) annotation(
    Placement(visible = true, transformation(origin = {190, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g1(a = {10, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {4, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {4, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add Ptot annotation(
    Placement(visible = true, transformation(origin = {100, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add as2 annotation(
    Placement(visible = true, transformation(origin = {-52, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(duration = 10, height = 5e6)  annotation(
    Placement(visible = true, transformation(origin = {88, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta3(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-34, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction Cp3(a = {1}, b = {0.182}) annotation(
    Placement(visible = true, transformation(origin = {-150, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {-20, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {38, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1(k = 150e6) annotation(
    Placement(visible = true, transformation(origin = {74, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {134, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter sat(uMax = 1, uMin = 0) annotation(
    Placement(visible = true, transformation(origin = {-50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax = 1, uMin = 0) annotation(
    Placement(visible = true, transformation(origin = {10, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax = 1, uMin = 0) annotation(
    Placement(visible = true, transformation(origin = {-24, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(g1.y, Pn1.u) annotation(
    Line(points = {{15, 0}, {56, 0}}, color = {0, 0, 127}));
  connect(Pbal.y, N.u) annotation(
    Line(points = {{171, -42}, {178, -42}}, color = {0, 0, 127}));
  connect(g2.y, Pn2.u) annotation(
    Line(points = {{15, -40}, {58, -40}}, color = {0, 0, 127}));
  connect(beta1.y, as1.u1) annotation(
    Line(points = {{-110, 39}, {-110, 6}, {-102, 6}}, color = {0, 0, 127}));
  connect(Cp1.u, Cs.u) annotation(
    Line(points = {{-162, -6}, {-180, -6}, {-180, 80}, {-162, 80}}, color = {0, 0, 127}));
  connect(beta2.y, as2.u1) annotation(
    Line(points = {{-70, 39}, {-70, -34}, {-64, -34}}, color = {0, 0, 127}));
  connect(Cp2.u, Cp1.u) annotation(
    Line(points = {{-162, -46}, {-180, -46}, {-180, -6}, {-162, -6}}, color = {0, 0, 127}));
  connect(Pn1.y, Ptot.u1) annotation(
    Line(points = {{79, 0}, {79, -14}, {88, -14}}, color = {0, 0, 127}));
  connect(Cs.y, beta1.u) annotation(
    Line(points = {{-138, 80}, {-110, 80}, {-110, 62}}, color = {0, 0, 127}));
  connect(N.y, fb.u) annotation(
    Line(points = {{201, -42}, {201, -140}, {84, -140}}, color = {0, 0, 127}));
  connect(fb.y, Cp2.u) annotation(
    Line(points = {{61, -140}, {-180, -140}, {-180, -46}, {-162, -46}}, color = {0, 0, 127}));
  connect(Cp2.y, as2.u2) annotation(
    Line(points = {{-139, -46}, {-64, -46}}, color = {0, 0, 127}));
  connect(Cp1.y, as1.u2) annotation(
    Line(points = {{-138, -6}, {-102, -6}}, color = {0, 0, 127}));
  connect(Pn2.y, Ptot.u2) annotation(
    Line(points = {{81, -40}, {81, -26}, {88, -26}}, color = {0, 0, 127}));
  connect(Cs.y, beta2.u) annotation(
    Line(points = {{-138, 80}, {-70, 80}, {-70, 62}}, color = {0, 0, 127}));
  connect(ramp.y, Pbal.u2) annotation(
    Line(points = {{99, 58}, {161, 58}, {161, -34}}, color = {0, 0, 127}));
  connect(Ptot.y, add1.u1) annotation(
    Line(points = {{111, -20}, {117, -20}, {117, -36}, {121, -36}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u2) annotation(
    Line(points = {{85, -88}, {112, -88}, {112, -48}, {122, -48}}, color = {0, 0, 127}));
  connect(Cp3.u, fb.y) annotation(
    Line(points = {{-162, -94}, {-180, -94}, {-180, -140}, {62, -140}}, color = {0, 0, 127}));
  connect(beta3.y, add.u1) annotation(
    Line(points = {{-34, 39}, {-34, -82}, {-32, -82}}, color = {0, 0, 127}));
  connect(transferFunction1.y, gain1.u) annotation(
    Line(points = {{49, -88}, {62, -88}}, color = {0, 0, 127}));
  connect(Cp3.y, add.u2) annotation(
    Line(points = {{-139, -94}, {-32, -94}}, color = {0, 0, 127}));
  connect(add1.y, Pbal.u1) annotation(
    Line(points = {{145, -42}, {153, -42}}, color = {0, 0, 127}));
  connect(beta3.u, Cs.y) annotation(
    Line(points = {{-34, 62}, {-34, 80}, {-138, 80}}, color = {0, 0, 127}));
  connect(as1.y, sat.u) annotation(
    Line(points = {{-78, 0}, {-62, 0}}, color = {0, 0, 127}));
  connect(sat.y, g1.u) annotation(
    Line(points = {{-38, 0}, {-8, 0}}, color = {0, 0, 127}));
  connect(as2.y, limiter1.u) annotation(
    Line(points = {{-40, -40}, {-36, -40}}, color = {0, 0, 127}));
  connect(limiter1.y, g2.u) annotation(
    Line(points = {{-12, -40}, {-8, -40}}, color = {0, 0, 127}));
  connect(add.y, limiter.u) annotation(
    Line(points = {{-8, -88}, {-2, -88}}, color = {0, 0, 127}));
  connect(limiter.y, transferFunction1.u) annotation(
    Line(points = {{22, -88}, {26, -88}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-180, 100}, {200, -160}})),
  version = "");
end Progetto_AES;
