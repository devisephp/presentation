@section('template')
<div class="flex justify-center p-8 md:px-16">
  <div class="container flex flex-col items-center" :class="['text-' + devise.alignment.value]">
    <div class="w-full" :class="[devise.desktopSize.value]">
      <div v-if="devise.title.enabled && devise.title.text">
        <h2 v-html="devise.title.text" class="font-display text-5xl"></h2>
      </div>
      <template v-if="devise.copy.enabled">
        <div v-html="devise.copy.text" class="my-6 leading-loose font-normal"></div>
      </template>
    </div>
  </div>
</div>
@endsection


@section('component')
  <script>
    var component = {
      preview: ['{T~3}','{Txs~50}'],
      description: 'Title and Intro Copy',
      fields: {
        alignment: {
          type: 'select',
          label: 'Alignment',
          options: {
            left: 'Left',
            center: 'Center',
            right: 'Right',
          },
          default: {
            value: 'left'
          }
        },
        desktopSize: {
          type: 'select',
          label: 'Desktop Size',
          options: {
            'md:w-1/2': '1/2',
            'md:w-2/3': '2/3',
            'md:w-4/5': '4/5',
            'md:w-full': 'Full'
          },
          default: {
            value: 'md:w-2/3'
          }
        },
        title: {
          type: 'text',
          label: 'Title',
          editorLabel: true,
          enabler: true,
          default: {
            enabled: true
          }
        },
        copy: {
          type: 'wysiwyg',
          label: 'Copy',
          enabler: true,
          default: {
            enabled: true
          }
        },
      }
    }
  </script>
@endsection