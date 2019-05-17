@section('template')
<div>
  <reveal-presentation>
    @slices
  </reveal-presentation>
  <side-gradient :devise="devise"></side-gradient>
  
</div>
@endsection

@section('component')
<script>
  var component = {
    preview: ['{Bbg}'],
    description: 'Presentation container with VueJS Component',
    fields: {
      topColor: {
        type: 'color',
        label: 'Top Color',
        default: {
          color: '#5659DA'
        }
      },
      bottomColor: {
        type: 'color',
        label: 'Bottom Color',
        default: {
          color: '#5FCCFA'
        }
      }
    }
  }
</script>
@endsection