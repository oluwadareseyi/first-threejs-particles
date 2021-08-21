varying vec3 vPosition;

uniform vec3 uColor1;
uniform vec3 uColor2;

void main()
{
  vec3 color = vec3(1.0, 1.0, 1.0);
  float distanceToCenter = length(gl_PointCoord - vec2(0.5));


  vec3 color1 = vec3(1.0, 0.0, 0.0);
  vec3 color2 = vec3(1.0, 1.0, 0.0);
  float depth = vPosition.z - 0.5 + 0.5;

  color = mix(uColor1, uColor2, depth);

  float alpha = depth * 0.3 + 0.2;

  float strength = depth * (0.2 / distanceToCenter - 0.1); 

  gl_FragColor = vec4(color, strength);
}