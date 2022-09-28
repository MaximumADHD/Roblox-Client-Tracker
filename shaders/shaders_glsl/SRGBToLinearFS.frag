#version 110

uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    vec3 f1 = f0.xyz;
    gl_FragData[0] = vec4(f1 * f1, f0.w);
}

//$$Texture0Texture=s0
