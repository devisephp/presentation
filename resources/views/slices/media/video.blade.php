@section('template')
<div>
  <video class="shadow-lg outline-none" style="width:60vw" controls loop muted>
    <source :src="devise.video.text + '.mp4'" type="video/mp4" />
    <source :src="devise.video.text + '.webm'" type="video/webm" />
  </video>
</div>
@endsection

@section('component')
<script>
  var component = {
    preview: ['{Bbg}'],
    description: 'Empty container with child slices',
    fields: {
      video: {
        type: 'text',
        label: 'Video'
      }
    }
  }
</script>
@endsection