@section('template')
  <section>
    <section>
      
      <h1 v-if="devise.titleSize.value === 'large'">@{{ devise.title.text }}</h1>
      <h2 v-else>@{{ devise.title.text }}</h2>
      <div v-html="devise.content.text"></div>

      <div class="flex justify-center">
        <slices :slices="nonSlideSlices"></slices>
      </div>  

      <aside class="notes" v-html="devise.notes.text"></aside>
    </section>
    <slices :slices="slideSlices"></slices>
  </section>
@endsection

@section('component')
<script>
  var component = {
    preview: ['{Bbg}'],
    description: 'A slide that goes into a reveal presentation',
    fields: {
      title: {
        type: 'text',
        label: 'Title',
        editorLabel: true
      },
      titleSize: {
        type: 'select',
        label: 'Title Size',
        options: {
          large: 'Large',
          small: 'Small',
        },
        default: {
          value: 'small'
        }
      },
      content: {
        type: 'wysiwyg',
        label: 'Content'
      },
      notes: {
        type: 'wysiwyg',
        label: 'Notes'
      },
    },
    computed: {
      nonSlideSlices: function () {
        var slices = [];
        for (var i = 0; i < this.slices.length; i++) {
           var slice = this.slices[i];
           if (slice.metadata.name !== 'DevisePresentationRevealSlide') {
             slices.push(slice);
           }
        }
        return slices;
      },
      slideSlices: function () {
        var slices = [];
        for (var i = 0; i < this.slices.length; i++) {
           var slice = this.slices[i];
           if (slice.metadata.name == 'DevisePresentationRevealSlide') {
             slices.push(slice);
           }
        }
        return slices;
      }
    }
  }
</script>
@endsection