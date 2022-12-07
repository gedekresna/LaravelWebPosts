<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Belajar Laravel</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-link {{ ($active === 'home') ? 'active' : '' }}" href="/">Home</a>
          <a class="nav-link {{ ($active === 'about') ? 'active' : '' }}" href="/about">About</a>
          <a class="nav-link {{ ($active === 'blog') ? 'active' : '' }}" href="/posts">Blog</a>
          <a class="nav-link {{ ($active === 'categories') ? 'active' : '' }}" href="/categories">Category</a>     
        </div>
        <div class="navbar-nav ms-auto">

          @auth
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Welcome back, {{auth()->user()->name}}
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#"><i class="bi bi-layout-text-sidebar-reverse"></i> My Dashboard</a></li>
                <li><hr class="dropdown-divider"></li>
                <li> 
                <form action="/logout" method="post">
                  @csrf
                  <button type="submit" class="dropdown-item"><i class="bi bi-box-arrow-in-left"></i> Logout</button>
                </form></li>
              </ul>
            </li>            
          @else
            <div class="nav-item">
              <a href="/login" class="nav-link {{ ($active === 'categories') ? 'active' : '' }}"><i class="bi bi-box-arrow-in-right"></i> Login</a>
            </div>
          @endauth
        
        </div>
      </div>
    </div>
  </nav>