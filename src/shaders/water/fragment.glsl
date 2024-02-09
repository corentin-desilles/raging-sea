uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;

// we retrieve the varying and create the mix
varying float vElevation;

void main()
{
    // !!! Variable that mixes uDepthColor, uSurfaceColor according to vElevation
   float mixStrength = (vElevation + uColorOffset) * uColorMultiplier;
   vec3 color = mix(uDepthColor, uSurfaceColor, mixStrength);

   gl_FragColor = vec4(color, 1.0);

    #include <colorspace_fragment>
}