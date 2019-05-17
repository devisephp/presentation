@section('template')
<div class="relative" style="width:475px; height:475px">
  <div class="fragment fade-in-then-semi-out absolute flex justify-center items-center" style="width:286px; height:286px; left: 50%; margin-left: -143px;">
    <svg class="absolute inset-0" width="286px" height="286px" viewBox="0 0 286 286" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <defs>
          <radialGradient cx="50%" cy="0%" fx="50%" fy="0%" r="100%" id="radialGradient-1">
              <stop :stop-color="devise.circle1color1.color" offset="0%"></stop>
              <stop :stop-color="devise.circle1color2.color" offset="100%"></stop>
          </radialGradient>
      </defs>
      <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" fill-opacity="0.76">
          <g id="Artboard" transform="translate(-446.000000, -104.000000)" fill="url(#radialGradient-1)">
              <circle id="Oval" cx="589" cy="247" r="143"></circle>
          </g>
      </g>
    </svg>
    <div class="relative w-full z-10 text-white text-xl font-bold uppercase" style="width:150px; text-shadow: #000 1px 0 10px;">
      @{{ devise.circle1.text }}
    </div>
  </div>

  <div class="fragment fade-in-then-semi-out absolute bottom-0 flex justify-center items-center" style="width:286px; height:286px">
    <svg class="absolute inset-0" width="286px" height="286px" viewBox="0 0 286 286" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <defs>
          <radialGradient cx="50%" cy="0%" fx="50%" fy="0%" r="100%" id="radialGradient-2">
              <stop :stop-color="devise.circle2color1.color" offset="0%"></stop>
              <stop :stop-color="devise.circle2color2.color" offset="100%"></stop>
          </radialGradient>
      </defs>
      <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" fill-opacity="0.76">
          <g id="Artboard" transform="translate(-446.000000, -104.000000)" fill="url(#radialGradient-2)">
              <circle id="Oval" cx="589" cy="247" r="143"></circle>
          </g>
      </g>
    </svg>
    <div class="relative z-10 text-white text-xl font-bold uppercase" style="width:150px; text-shadow: #000 1px 0 10px;">
      @{{ devise.circle2.text }}
    </div>
  </div>

  <div class="fragment fade-in-then-semi-out absolute bottom-0 right-0 flex justify-center items-center" style="width:286px; height:286px">
    <svg class="absolute inset-0" width="286px" height="286px" viewBox="0 0 286 286" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <defs>
          <radialGradient cx="50%" cy="0%" fx="50%" fy="0%" r="100%" id="radialGradient-3">
              <stop :stop-color="devise.circle3color1.color" offset="0%"></stop>
              <stop :stop-color="devise.circle3color2.color" offset="100%"></stop>
          </radialGradient>
      </defs>
      <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" fill-opacity="0.76">
          <g id="Artboard" transform="translate(-446.000000, -104.000000)" fill="url(#radialGradient-3)">
              <circle id="Oval" cx="589" cy="247" r="143"></circle>
          </g>
      </g>
    </svg>
    <div class="relative z-10 text-white text-xl font-bold uppercase" style="width:150px; text-shadow: #000 1px 0 10px;">
      @{{ devise.circle3.text }}
    </div>
  </div>


</div>
@endsection

@section('component')
<script>
  var component = {
    preview: ['{Bbg}'],
    description: 'Empty container with child slices',
    fields: {
      circle1: {
        type: 'text',
        label: 'Circle 1 Text'
      },
      circle1color1: {
        type: 'color',
        label: 'Circle 1 Color 1',
        default: {
          color: '#52AFE5'
        }
      },
      circle1color2: {
        type: 'color',
        label: 'Circle 1 Color 2',
        default: {
          color: '#5659DA'
        }
      },
      circle2: {
        type: 'text',
        label: 'Circle 2 Text'
      },
      circle2color1: {
        type: 'color',
        label: 'Circle 2 Color 1',
        default: {
          color: '#FF9A9E'
        }
      },
      circle2color2: {
        type: 'color',
        label: 'Circle 2 Color 2',
        default: {
          color: '#5659DA'
        }
      },
      circle3: {
        type: 'text',
        label: 'Circle 3 Text'
      },
      circle3color1: {
        type: 'color',
        label: 'Circle 3 Color 1',
        default: {
          color: '#FEADA6'
        }
      },
      circle3color2: {
        type: 'color',
        label: 'Circle 3 Color 2',
        default: {
          color: '#F5EFEF'
        }
      }
    }
  }
</script>
@endsection