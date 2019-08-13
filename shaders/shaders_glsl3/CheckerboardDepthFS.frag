#version 150

void main()
{
    ivec2 _117 = ivec2(gl_FragCoord.xy);
    gl_FragDepth = float(int(fract(float(_117.x + _117.y) * 0.5) <= 0.0));
}

