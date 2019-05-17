@extends('layouts.main')

@section('content')
<div class="flex justify-center">
    <div class="p-8 bg-grey-lightest shadow w-4/5 md:w-2/5 xxl:w-1/5 text-center absolute absolute-center border-l-30 border-blue rounded-l">
        
        <h2 class="uppercase mb-4">{{ __('Login') }}</h2>

        <hr class="mb-8 w-3/5">

        <div class="text-left">
            <form method="POST" action="{{ route('login') }}">
                @csrf

                <fieldset class="mb-6">
                    <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                    <div class="col-md-6">
                        <input id="email" type="email" class="{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>

                        @if ($errors->has('email'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                        @endif
                    </div>
                </fieldset>

                <fieldset class="mb-6">
                    <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                    <div class="col-md-6">
                        <input id="password" type="password" class="{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                        @if ($errors->has('password'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        @endif
                    </div>
                </fieldset>

                <fieldset class="mb-6">
                    <div class="flex">
                        <input class="mr-4" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                        <label for="remember">
                            {{ __('Remember Me') }}
                        </label>
                    </div>
                </fieldset>

                <div class="form-group row mb-0">
                    <div class="flex flex-col items-center">
                        <button type="submit" class="btn btn-sm btn-blue mb-4">
                            {{ __('Login') }}
                        </button>

                        @if (Route::has('password.request'))
                            <a class="btn btn-link text-blue btn-sm" href="{{ route('password.request') }}">
                                {{ __('Forgot Your Password?') }}
                            </a>
                        @endif
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
