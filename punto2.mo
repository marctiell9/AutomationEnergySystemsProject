model punto_2_AES
  Modelica.Blocks.Math.Feedback Pbal annotation(
    Placement(visible = true, transformation(origin = {188, -20}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta1(k = 0.666) annotation(
    Placement(visible = true, transformation(origin = {-70, 114}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain fb(k = -1) annotation(
    Placement(visible = true, transformation(origin = {70, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction Cp2(a = {1}, b = {3.686}) annotation(
    Placement(visible = true, transformation(origin = {-124, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50000000) annotation(
    Placement(visible = true, transformation(origin = {102, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator N(k = 1/(30000*314^2)) annotation(
    Placement(visible = true, transformation(origin = {240, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn1(k = 100000000) annotation(
    Placement(visible = true, transformation(origin = {82, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta2(k = 0.333) annotation(
    Placement(visible = true, transformation(origin = {-8, 114}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {66, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g1(a = {10, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {48, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add Ptot annotation(
    Placement(visible = true, transformation(origin = {146, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator Cs(k = 0.0222) annotation(
    Placement(visible = true, transformation(origin = {-158, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction Cp1(a = {1}, b = {0.014}) annotation(
    Placement(visible = true, transformation(origin = {-146, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Pg1(y = if time < 1800 then 60e6 elseif time < 3600 then 70e6
   elseif time < 7200 then 79.67e6
   elseif time < 9000 then 73e6 else 60e6)  annotation(
    Placement(visible = true, transformation(origin = {-268, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Pg2(y = if time < 1800 then 0 elseif time < 3600 then 0
   elseif time < 7200 then 40.33e6
   elseif time < 9000 then 37e6 else 0)  annotation(
    Placement(visible = true, transformation(origin = {-268, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain uno_fratto_Pn1(k = 1/100e6)  annotation(
    Placement(visible = true, transformation(origin = {-222, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 1/50e6)  annotation(
    Placement(visible = true, transformation(origin = {-226, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-58, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {-40, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction Cps(a = {2, 1, 0}, b = {9, 0.81, 0.018}) annotation(
    Placement(visible = true, transformation(origin = {-148, -142}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g(a = {20, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-18, -136}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {22, -136}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1(k = -1) annotation(
    Placement(visible = true, transformation(origin = {-18, -166}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator(k = 1/6.573) annotation(
    Placement(visible = true, transformation(origin = {62, -136}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression DPe(y = if time < 1800 then 60e6 elseif time < 3600 then 70e6
   elseif time < 7200 then 120e6
   elseif time < 9000 then 110e6 else 60e6) annotation(
    Placement(visible = true, transformation(origin = {175, 13}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression(y = if time < 5400 then 110/150 elseif time < 7200 then 90/150 else 130/150)  annotation(
    Placement(visible = true, transformation(origin = {6, -108}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = if time < 5400 then 110/150 elseif time < 7200 then 90/150 else 130/150)  annotation(
    Placement(visible = true, transformation(origin = {-200, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add3 annotation(
    Placement(visible = true, transformation(origin = {-88, -136}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {8, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add4 annotation(
    Placement(visible = true, transformation(origin = {-22, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter sat(uMax = 1, uMin = 0) annotation(
    Placement(visible = true, transformation(origin = {16, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax = 1, uMin = 0) annotation(
    Placement(visible = true, transformation(origin = {36, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax = 1, uMin = 0) annotation(
    Placement(visible = true, transformation(origin = {-52, -136}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(g1.y, Pn1.u) annotation(
    Line(points = {{59, 36}, {70, 36}}, color = {0, 0, 127}));
  connect(g2.y, Pn2.u) annotation(
    Line(points = {{77, -34}, {90, -34}}, color = {0, 0, 127}));
  connect(Cp2.u, Cp1.u) annotation(
    Line(points = {{-136, -46}, {-180, -46}, {-180, 30}, {-158, 30}}, color = {0, 0, 127}));
  connect(Pn2.y, Ptot.u2) annotation(
    Line(points = {{113, -34}, {123.5, -34}, {123.5, -26}, {134, -26}}, color = {0, 0, 127}));
  connect(Pn1.y, Ptot.u1) annotation(
    Line(points = {{93, 36}, {121, 36}, {121, -14}, {134, -14}}, color = {0, 0, 127}));
  connect(fb.y, Cp2.u) annotation(
    Line(points = {{59, -80}, {-180, -80}, {-180, -46}, {-136, -46}}, color = {0, 0, 127}));
  connect(Pbal.y, N.u) annotation(
    Line(points = {{197, -20}, {228, -20}}, color = {0, 0, 127}));
  connect(Ptot.y, Pbal.u1) annotation(
    Line(points = {{157, -20}, {180, -20}}, color = {0, 0, 127}));
  connect(Cs.y, beta1.u) annotation(
    Line(points = {{-147, 132}, {-70, 132}, {-70, 126}}, color = {0, 0, 127}));
  connect(Cp1.u, Cs.u) annotation(
    Line(points = {{-158, 30}, {-180, 30}, {-180, 132}, {-170, 132}}, color = {0, 0, 127}));
  connect(Pg1.y, uno_fratto_Pn1.u) annotation(
    Line(points = {{-256, 52}, {-234, 52}}, color = {0, 0, 127}));
  connect(Pg2.y, gain.u) annotation(
    Line(points = {{-257, -14}, {-238, -14}}, color = {0, 0, 127}));
  connect(gain.y, add2.u1) annotation(
    Line(points = {{-215, -14}, {-83.25, -14}, {-83.25, -34}, {-52, -34}}, color = {0, 0, 127}));
  connect(Cp1.y, add1.u2) annotation(
    Line(points = {{-135, 30}, {-70, 30}}, color = {0, 0, 127}));
  connect(feedback.y, integrator.u) annotation(
    Line(points = {{31, -136}, {49, -136}}, color = {0, 0, 127}));
  connect(g.y, feedback.u1) annotation(
    Line(points = {{-7, -136}, {13, -136}}, color = {0, 0, 127}));
  connect(integrator.y, gain1.u) annotation(
    Line(points = {{73, -136}, {91, -136}, {91, -166}, {-7, -166}}, color = {0, 0, 127}));
  connect(DPe.y, Pbal.u2) annotation(
    Line(points = {{187, 13}, {187, 12}, {188, 12}, {188, -12}}, color = {0, 0, 127}));
  connect(realExpression.y, feedback.u2) annotation(
    Line(points = {{18, -108}, {22, -108}, {22, -128}}, color = {0, 0, 127}));
  connect(Cps.y, add3.u2) annotation(
    Line(points = {{-137, -142}, {-100, -142}}, color = {0, 0, 127}));
  connect(realExpression1.y, add3.u1) annotation(
    Line(points = {{-188, -122}, {-100, -122}, {-100, -130}}, color = {0, 0, 127}));
  connect(gain1.y, Cps.u) annotation(
    Line(points = {{-28, -166}, {-182, -166}, {-182, -142}, {-160, -142}}, color = {0, 0, 127}));
  connect(beta2.u, Cs.y) annotation(
    Line(points = {{-8, 126}, {-8, 132}, {-146, 132}}, color = {0, 0, 127}));
  connect(N.y, fb.u) annotation(
    Line(points = {{251, -20}, {270, -20}, {270, -80}, {82, -80}}, color = {0, 0, 127}));
  connect(uno_fratto_Pn1.y, add1.u1) annotation(
    Line(points = {{-211, 52}, {-126, 52}, {-126, 42}, {-70, 42}}, color = {0, 0, 127}));
  connect(Cp2.y, add2.u2) annotation(
    Line(points = {{-113, -46}, {-52, -46}}, color = {0, 0, 127}));
  connect(add2.y, add.u2) annotation(
    Line(points = {{-29, -40}, {-4, -40}}, color = {0, 0, 127}));
  connect(beta2.y, add.u1) annotation(
    Line(points = {{-8, 104}, {-8, -28}, {-4, -28}}, color = {0, 0, 127}));
  connect(add1.y, add4.u2) annotation(
    Line(points = {{-46, 36}, {-44, 36}, {-44, 30}, {-34, 30}}, color = {0, 0, 127}));
  connect(beta1.y, add4.u1) annotation(
    Line(points = {{-70, 104}, {-70, 62}, {-36, 62}, {-36, 42}, {-34, 42}}, color = {0, 0, 127}));
  connect(add4.y, sat.u) annotation(
    Line(points = {{-10, 36}, {4, 36}}, color = {0, 0, 127}));
  connect(sat.y, g1.u) annotation(
    Line(points = {{28, 36}, {36, 36}}, color = {0, 0, 127}));
  connect(add.y, limiter.u) annotation(
    Line(points = {{20, -34}, {24, -34}}, color = {0, 0, 127}));
  connect(limiter.y, g2.u) annotation(
    Line(points = {{47, -34}, {54, -34}}, color = {0, 0, 127}));
  connect(g.u, limiter1.y) annotation(
    Line(points = {{-30, -136}, {-40, -136}}, color = {0, 0, 127}));
  connect(limiter1.u, add3.y) annotation(
    Line(points = {{-64, -136}, {-76, -136}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-280, 160}, {280, -180}})),
  version = "");end punto_2_AES;
