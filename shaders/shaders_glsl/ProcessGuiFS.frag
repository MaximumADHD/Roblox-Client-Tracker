#version 110

uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    gl_FragData[0] = vec4(clamp(f0.xyz * 2.0, vec3(0.0), vec3(1.0)), f0.w);
}

//$$Texture0Texture=s0
