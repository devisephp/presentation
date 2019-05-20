@section('template')
<div class="relative flex justify-center p-4">
  <div class="container mt-8 mb-8 md:mb-12 w-full md:w-4/5 flex flex-col items-start" :class="[devise.leftOrRight.value]">
    <div class="w-full px-8 md:px-10" :class="[devise.paragraphWidth.value]" :style="{color: devise.copyColor.color}">
      <h3 class="font-display text-3xl">
        @{{ devise.title.text }}
      </h3>
      <div v-html="devise.copy.text" class="my-6 leading-loose"></div>
    </div>
    <div class="w-full relative text-center flex flex-wrap" :class="imageWidth">
      <slices :slices="slices" class="p-4"></slices>
    </div>
  </div>
</div>
@endsection


@section('component')
  <script>
    var component = {
      preview: ['{Bbg, Txs~50}'],
      description: 'Paragraph and a slot for child slices',
      fields: {
        leftOrRight: {
          label: 'Copy on Left or Right?',
          type: 'select',
          options: {
            'md:flex-row-reverse': 'Right',
            'md:flex-row': 'Left',
          },
          default: {
            value: 'md:flex-row-reverse'
          }
        },
        title: {
          label: 'Title',
          type: 'text',
          editorLabel:true
        },
        copy: {
          label: 'Primary Copy',
          type: 'wysiwyg'
        },
        copyColor: {
          label: 'Copy Color',
          type: 'color',
          default: {
            color: '#000000'
          }
        },
        paragraphWidth: {
          label: 'Paragraph Width',
          type: 'select',
          options: {
            'md:w-1/2': '1/2 Width',
            'md:w-2/3': '2/3 Width',
            'md:w-3/4': '3/4 Width',
          },
          default: {
            value: 'md:w-1/2'
          }
        }
      },
      props: {
        backgroundColorLeft: {
          default: '#ffffff',
          type: String
        },
        backgroundColorRight: {
          default: '#ffffff',
          type: String
        }
      },
      computed: {
        imageWidth: function () {
          if (this.devise.paragraphWidth.value === 'md:w-1/2') {
            return 'md:w-1/2'
          }
          if (this.devise.paragraphWidth.value === 'md:w-2/3') {
            return 'md:w-1/3'
          }
          if (this.devise.paragraphWidth.value === 'md:w-3/4') {
            return 'md:w-1/4'
          }
        }
        
      }
    }
  </script>
@endsection