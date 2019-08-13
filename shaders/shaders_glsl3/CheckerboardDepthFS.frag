#version 150

void main()
{
    ivec2 f0 = ivec2(gl_FragCoord.xy);
    gl_FragDepth = float(int(fract(float(f0.x + f0.y) * 0.5) <= 0.0));
}

