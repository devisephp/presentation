:@section('template')
<div>
  <img :data-src="devise.image.url">
</div>
@endsection

@section('component')
<script>
  var component = {
    preview: ['{B, I, B}'],
    description: 'An Image...',
    fields: {
      image: {
        type: 'image',
        label: 'Image'
      }
    }
  }
</script>
@endsection