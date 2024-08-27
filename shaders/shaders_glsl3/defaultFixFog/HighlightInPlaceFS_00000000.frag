#version 150

uniform vec4 CB13[16];
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = floor(gl_FragCoord.xy);
    vec2 f1 = f0 * 0.5;
    _entryPointOutput = vec4(CB13[0].xyz, float(((fract(f0.y * 0.5) * 0.5) + fract(f1.x + f1.y)) > (0.875 - CB13[0].w)));
}

