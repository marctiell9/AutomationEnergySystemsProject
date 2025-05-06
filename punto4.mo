model Progetto_AES
  extends AES;
  Modelica.Blocks.Continuous.TransferFunction Cp1(a = {1}, b = {0.91}) annotation(
    Placement(visible = true, transformation(origin = {-144, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator Cs(k = 0.023) annotation(
    Placement(visible = true, transformation(origin = {-150, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback Pbal annotation(
    Placement(visible = true, transformation(origin = {242, -42}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta1(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-128, 48}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain Pn1(k = 100e6) annotation(
    Placement(visible = true, transformation(origin = {148, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta2(k = 0.2) annotation(
    Placement(visible = true, transformation(origin = {-44, 46}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction Cp2(a = {1}, b = {4.773}) annotation(
    Placement(visible = true, transformation(origin = {0, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6) annotation(
    Placement(visible = true, transformation(origin = {150, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain fb(k = -1) annotation(
    Placement(visible = true, transformation(origin = {180, -140}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add as1 annotation(
    Placement(visible = true, transformation(origin = {-72, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator N(k = 1 /(40000*314^2)) annotation(
    Placement(visible = true, transformation(origin = {270, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g1(a = {10, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {92, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {96, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add Ptot annotation(
    Placement(visible = true, transformation(origin = {180, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add as2 annotation(
    Placement(visible = true, transformation(origin = {40, -58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta3(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {14, 44}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction Cp3(a = {1}, b = {0.182}) annotation(
    Placement(visible = true, transformation(origin = {-86, -118}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {66, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {100, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1(k = 150e6) annotation(
    Placement(visible = true, transformation(origin = {152, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {214, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression(y = if time < 1800 then 170e6 elseif time < 3600 then 180e6
   elseif time < 5400 then 230e6
   elseif time < 7200 then 210e6
   elseif time < 9000 then 240e6 else 190e6)  annotation(
    Placement(visible = true, transformation(origin = {228, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 1/100e6) annotation(
    Placement(visible = true, transformation(origin = {-230, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2(k = 1/50e6) annotation(
    Placement(visible = true, transformation(origin = {-236, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain3(k = 1/150e6) annotation(
    Placement(visible = true, transformation(origin = {-236, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = if time < 1800 then 0 elseif time < 3600 then 0
   elseif time < 5400 then 91.36e6
   elseif time < 7200 then 76.82e6
   elseif time < 9000 then 93e6 else 0) annotation(
    Placement(visible = true, transformation(origin = {-272, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression2(y = if time < 1800 then 30e6 elseif time < 3600 then 40e6
  elseif time < 5400 then 0
  elseif time < 7200 then 0
  elseif time < 9000 then 7.5e6 else 50e6) annotation(
    Placement(visible = true, transformation(origin = {-276, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression3(y = if time < 1800 then 140e6 elseif time < 3600 then 140e6
   elseif time < 5400 then 138.64e6
   elseif time < 7200 then 133.12e6
   elseif time < 9000 then 139e6 else 140e6) annotation(
    Placement(visible = true, transformation(origin = {-276, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {-116, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add3 annotation(
    Placement(visible = true, transformation(origin = {-24, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add4 annotation(
    Placement(visible = true, transformation(origin = {26, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(g1.y, Pn1.u) annotation(
    Line(points = {{103, -2}, {136, -2}}, color = {0, 0, 127}));
  connect(as1.y, g1.u) annotation(
    Line(points = {{-61, -2}, {80, -2}}, color = {0, 0, 127}));
  connect(Pbal.y, N.u) annotation(
    Line(points = {{251, -42}, {258, -42}}, color = {0, 0, 127}));
  connect(g2.y, Pn2.u) annotation(
    Line(points = {{107, -40}, {138, -40}}, color = {0, 0, 127}));
  connect(Cp1.u, Cs.u) annotation(
    Line(points = {{-156, -8}, {-180, -8}, {-180, 80}, {-162, 80}}, color = {0, 0, 127}));
  connect(Cp2.u, Cp1.u) annotation(
    Line(points = {{-12, -64}, {-180, -64}, {-180, -8}, {-156, -8}}, color = {0, 0, 127}));
  connect(Pn1.y, Ptot.u1) annotation(
    Line(points = {{159, -2}, {159, -14}, {168, -14}}, color = {0, 0, 127}));
  connect(Cs.y, beta1.u) annotation(
    Line(points = {{-138, 80}, {-128, 80}, {-128, 60}}, color = {0, 0, 127}));
  connect(N.y, fb.u) annotation(
    Line(points = {{281, -42}, {285, -42}, {285, -140}, {192, -140}}, color = {0, 0, 127}));
  connect(fb.y, Cp2.u) annotation(
    Line(points = {{169, -140}, {-180, -140}, {-180, -64}, {-12, -64}}, color = {0, 0, 127}));
  connect(Cp2.y, as2.u2) annotation(
    Line(points = {{11, -64}, {28, -64}}, color = {0, 0, 127}));
  connect(Cp1.y, as1.u2) annotation(
    Line(points = {{-133, -8}, {-84, -8}}, color = {0, 0, 127}));
  connect(Pn2.y, Ptot.u2) annotation(
    Line(points = {{161, -40}, {161, -26}, {168, -26}}, color = {0, 0, 127}));
  connect(Cs.y, beta2.u) annotation(
    Line(points = {{-138, 80}, {-44, 80}, {-44, 58}}, color = {0, 0, 127}));
  connect(Ptot.y, add1.u1) annotation(
    Line(points = {{191, -20}, {198, -20}, {198, -36}, {202, -36}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u2) annotation(
    Line(points = {{163, -94}, {192, -94}, {192, -48}, {202, -48}}, color = {0, 0, 127}));
  connect(Cp3.u, fb.y) annotation(
    Line(points = {{-98, -118}, {-180, -118}, {-180, -140}, {169, -140}}, color = {0, 0, 127}));
  connect(transferFunction1.y, gain1.u) annotation(
    Line(points = {{111, -94}, {140, -94}}, color = {0, 0, 127}));
  connect(Cp3.y, add.u2) annotation(
    Line(points = {{-75, -118}, {-25.5, -118}, {-25.5, -100}, {54, -100}}, color = {0, 0, 127}));
  connect(add1.y, Pbal.u1) annotation(
    Line(points = {{225, -42}, {234, -42}}, color = {0, 0, 127}));
  connect(beta3.u, Cs.y) annotation(
    Line(points = {{14, 56}, {14, 80}, {-138, 80}}, color = {0, 0, 127}));
  connect(realExpression.y, Pbal.u2) annotation(
    Line(points = {{239, 2}, {242, 2}, {242, -34}}, color = {0, 0, 127}));
  connect(realExpression1.y, gain.u) annotation(
    Line(points = {{-261, 14}, {-242, 14}}, color = {0, 0, 127}));
  connect(realExpression2.y, gain2.u) annotation(
    Line(points = {{-265, -44}, {-249, -44}}, color = {0, 0, 127}));
  connect(realExpression3.y, gain3.u) annotation(
    Line(points = {{-265, -94}, {-248, -94}}, color = {0, 0, 127}));
  connect(gain.y, add2.u2) annotation(
    Line(points = {{-219, 14}, {-128, 14}}, color = {0, 0, 127}));
  connect(beta1.y, add2.u1) annotation(
    Line(points = {{-128, 37}, {-128, 26}}, color = {0, 0, 127}));
  connect(add2.y, as1.u1) annotation(
    Line(points = {{-105, 20}, {-84, 20}, {-84, 4}}, color = {0, 0, 127}));
  connect(gain2.y, add3.u2) annotation(
    Line(points = {{-225, -44}, {-36, -44}}, color = {0, 0, 127}));
  connect(beta2.y, add3.u1) annotation(
    Line(points = {{-44, 36}, {-44, -32}, {-36, -32}}, color = {0, 0, 127}));
  connect(add3.y, as2.u1) annotation(
    Line(points = {{-12, -38}, {22, -38}, {22, -52}, {28, -52}}, color = {0, 0, 127}));
  connect(as2.y, g2.u) annotation(
    Line(points = {{52, -58}, {70, -58}, {70, -40}, {84, -40}}, color = {0, 0, 127}));
  connect(beta3.y, add4.u1) annotation(
    Line(points = {{14, 34}, {14, -82}}, color = {0, 0, 127}));
  connect(gain3.y, add4.u2) annotation(
    Line(points = {{-225, -94}, {14, -94}}, color = {0, 0, 127}));
  connect(add4.y, add.u1) annotation(
    Line(points = {{37, -88}, {54, -88}}, color = {0, 0, 127}));
  connect(add.y, transferFunction1.u) annotation(
    Line(points = {{77, -94}, {88, -94}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-300, 100}, {300, -160}})),
  version = "");
end Progetto_AES;
