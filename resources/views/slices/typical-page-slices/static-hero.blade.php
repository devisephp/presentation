@section('template')
  <div class="relative w-full bg-black text-center font-display" :style="sliceStyle">

    <div class="relative container" style="max-width:1200px">
      {{-- Left Gradient --}}
      <div class="absolute top-0 bottom-0 left-0" style="width:100px; background: linear-gradient(to right, #000, rgba(0,0,0,0)"></div>
      {{-- Right Gradient --}}
      <div class="absolute top-0 bottom-0 right-0" style="width:100px; background: linear-gradient(to left, #000, rgba(0,0,0,0)"></div>
      <img v-devise-image="{breakpoint: breakpoint, image: devise.image}" class="w-full" v-if="breakpoint !== 'mobile'">
      <div class="bg-black absolute inset-0" :style="{opacity: devise.backgroundOpacity.text}"></div>
    </div>

    <div class="relative sm:absolute bottom-0 left-0 right-0 text-center text-white mb-16 z-10 p-2 pt-8 sm:p-0">
      <h1 class="mb-6 text-6xl uppercase">@{{ devise.title.text }}</h1>
      <h3 v-if="devise.subtitle.enabled" class="uppercase font-light">@{{ devise.subtitle.text }}</h3>
      <a v-if="devise.link.enabled" :href="devise.link.href" class="btn bg-blue-lighter text-white mt-8">@{{ devise.link.text }}</a>
    </div>
    
    {{-- Top Gradient --}}
    <div :style="topGradient" v-if="devise.topGradientShow.checked" class="absolute top-0 left-0 right-0"></div>
    {{-- Bottom Gradient --}}
    <div :style="bottomGradient" v-if="devise.bottomGradientShow.checked" class="absolute bottom-0 left-0 right-0"></div>
  </div>
@endsection

@section('component')
  <script>
    var component = {
      preview: ['{I}'],
      description: 'Hero with a static image',
      fields: {
        image: {
          label: 'Background Image',
          type: 'image',
          default: {
            url: '/imgs/static-hero.jpg'
          }
        },
        title: {
          type: 'text',
          label: 'Title'
        },
        subtitle: {
          type: 'text',
          label: 'Subtitle',
          enabler: true,
          default: {
            enabled: true
          }
        },
        link: {
          type: 'link',
          label: 'Link',
          enabler: true
        },
        backgroundOpacity: {
          type: 'number',
          label: 'Background Opacity',
          instructions: 'The number needs to be between 0 and 1',
          default: {
            text: 0.4
          }
        },
        topGradientShow: {
          type: 'checkbox',
          label: 'Show Top Gradient',
          default: {
            value: false
          }
        },
        topColorTop: {
          label: 'Top Gradient - Top Color',
          type: 'color',
          default: {
            color: 'rgba(0,0,0,1)'
          }
        },
        topColorBottom: {
          label: 'Top Gradient - Bottom Color',
          type: 'color',
          default: {
            color: 'rgba(0,0,0,0)'
          }
        },
        topGradientHeight: {
          label: 'Top Gradient - Height',
          type: 'number',
          default: {
            text: 100
          }
        },
        bottomGradientShow: {
          type: 'checkbox',
          label: 'Show Bottom Gradient',
          default: {
            value: false
          }
        },
        bottomColorTop: {
          label: 'Bottom Gradient - Top Color',
          type: 'color',
          default: {
            color: 'rgba(0,0,0,0)'
          }
        },
        bottomColorBottom: {
          label: 'Bottom Gradient - Bottom Color',
          type: 'color',
          default: {
            color: 'rgba(0,0,0,1)'
          }
        },
        bottomGradientHeight: {
          label: 'Bottom Gradient - Height',
          type: 'number',
          default: {
            text: 100
          }
        },
      },
      computed: {
        sliceStyle: function () {
          var styles = {
            overflow:'hidden'
          };

          if (this.breakpoint !== 'mobile') {
            styles['max-height'] = '700px';
          } else {
            styles['padding'] = '2em';
            styles['background-image'] = 'url(\'' + this.devise.image.url + '\')';
          }

          return styles;
        },
        topGradient: function () {
          return {
            height: this.devise.topGradientHeight.text + 'px',
            background: 'linear-gradient('+ this.devise.topColorTop.color +', '+ this.devise.topColorBottom.color +')'
          }
        },
        bottomGradient: function () {
          return {
            height: this.devise.bottomGradientHeight.text + 'px',
            background: 'linear-gradient('+ this.devise.bottomColorTop.color +', '+ this.devise.bottomColorBottom.color +')'
          }
        }
      }
    }
  </script>
@endsection