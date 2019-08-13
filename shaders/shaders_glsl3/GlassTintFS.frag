#version 150

in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = mix(vec3(1.0), VARYING2.xyz, vec3(clamp(VARYING2.w * 2.0, 0.0, 1.0)));
    _entryPointOutput = vec4(f0, 3.0 - dot(f0, vec3(1.0)));
}

