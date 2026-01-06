#version 150

in vec3 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = vec4(vec3(uvec3(VARYING1) & uvec3(3u)) * vec3(0.3333333432674407958984375), 1.0);
}

