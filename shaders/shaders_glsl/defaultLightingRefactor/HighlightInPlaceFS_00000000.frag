#version 110

uniform vec4 CB13[16];
void main()
{
    vec2 f0 = floor(gl_FragCoord.xy);
    vec2 f1 = f0 * 0.5;
    gl_FragData[0] = vec4(CB13[0].xyz, float(((fract(f0.y * 0.5) * 0.5) + fract(f1.x + f1.y)) > (0.875 - CB13[0].w)));
}

