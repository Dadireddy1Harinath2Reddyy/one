<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta
        name="description"
        content="NexusShop modern and responsive e-commerce website"
    >

    <title>NexusShop | Modern E-Commerce</title>

    <!-- Google Fonts -->
    https://fonts.googleapis.com
    <link
        rel="preconnect"
        href="ref="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700&display=swap"
        rel="stylesheet"
     rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    >

    <style>
        :root {
            --primary: #0a2540;
            --primary-light: #123f67;
            --accent: #00b8d9;
            --accent-dark: #007e98;
            --surface: #f5f8fc;
            --white: #ffffff;
            --text: #13293d;
            --muted: #66788a;
            --border: #dfe7ef;
            --success: #16884a;
            --danger: #d9363e;
            --warning: #f6b900;
            --radius: 16px;
            --container: 1200px;
            --shadow: 0 10px 28px rgba(10, 37, 64, 0.09);
        }

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            color: var(--text);
            background: var(--white);
            font-family: Inter, system-ui, sans-serif;
            line-height: 1.55;
        }

        body.menu-open {
            overflow: hidden;
        }

        img {
            display: block;
            max-width: 100%;
        }

        button,
        input {
            font: inherit;
        }

        button,
        a {
            touch-action: manipulation;
        }

        button {
            color: inherit;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button:focus-visible,
        a:focus-visible,
        input:focus-visible {
            outline: 3px solid rgba(0, 184, 217, 0.35);
            outline-offset: 3px;
        }

        .container {
            width: min(100% - 32px, var(--container));
            margin: 0 auto;
        }

        .muted {
            color: var(--muted);
        }

        .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            white-space: nowrap;
            border: 0;
        }

        .skip-link {
            position: fixed;
            top: -60px;
            left: 16px;
            z-index: 999;
            padding: 10px 14px;
            color: white;
            background: var(--primary);
            border-radius: 8px;
        }

        .skip-link:focus {
            top: 16px;
        }

        /* Header */

        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, 0.96);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(12px);
        }

        .header-inner {
            display: flex;
            gap: 18px;
            align-items: center;
            justify-content: space-between;
            min-height: 72px;
        }

        .brand {
            font-family: Poppins, sans-serif;
            font-size: 21px;
            font-weight: 700;
            white-space: nowrap;
        }

        .brand .accent {
            color: var(--accent-dark);
        }

        .main-nav ul {
            display: flex;
            gap: 4px;
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .main-nav a {
            display: flex;
            gap: 7px;
            align-items: center;
            padding: 10px;
            font-size: 14px;
            font-weight: 600;
            border-radius: 10px;
        }

        .main-nav a:hover {
            color: var(--accent-dark);
            background: var(--surface);
        }

        .right-header {
            display: flex;
            gap: 10px;
            align-items: center;
            min-width: 0;
        }

        .search {
            display: flex;
            align-items: center;
            width: min(330px, 30vw);
            padding: 3px 6px 3px 14px;
            background: var(--surface);
            border: 1px solid transparent;
            border-radius: 999px;
        }

        .search:focus-within {
            background: white;
            border-color: var(--accent);
        }

        .search input {
            width: 100%;
            min-width: 0;
            padding: 8px 0;
            color: var(--text);
            background: transparent;
            border: 0;
            outline: 0;
        }

        .icon-btn {
            display: inline-grid;
            place-items: center;
            width: 42px;
            height: 42px;
            color: var(--primary);
            background: transparent;
            border: 0;
            border-radius: 50%;
            cursor: pointer;
        }

        .icon-btn:hover {
            background: var(--surface);
        }

        .header-actions {
            display: flex;
            align-items: center;
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -3px;
            right: -2px;
            display: grid;
            place-items: center;
            min-width: 20px;
            height: 20px;
            padding: 0 5px;
            color: white;
            font-size: 11px;
            font-weight: 700;
            background: var(--danger);
            border-radius: 999px;
        }

        .mobile-toggle {
            display: none;
        }

        .mobile-menu {
            display: none;
            background: white;
            border-top: 1px solid var(--border);
        }

        .mobile-menu ul {
            padding: 10px 0 18px;
            margin: 0;
            list-style: none;
        }

        .mobile-menu a {
            display: block;
            padding: 12px;
            font-weight: 600;
            border-radius: 10px;
        }

        .mobile-menu a:hover {
            background: var(--surface);
        }

        /* Hero */

        .hero {
            display: grid;
            place-items: center;
            min-height: 510px;
            padding: 70px 16px;
            color: white;
            text-align: center;
            background:
                linear-gradient(
                    rgba(5, 28, 48, 0.69),
                    rgba(5, 28, 48, 0.69)
                ),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=82")
                center / cover no-repeat;
        }

        .hero-content {
            max-width: 780px;
        }

        .eyebrow {
            display: inline-block;
            padding: 7px 12px;
            font-size: 13px;
            font-weight: 700;
            background: rgba(255, 255, 255, 0.12);
            border: 1px solid rgba(255, 255, 255, 0.4);
            border-radius: 999px;
        }

        .hero h1 {
            margin: 18px 0 16px;
            font-family: Poppins, sans-serif;
            font-size: clamp(2.1rem, 5vw, 4rem);
            line-height: 1.08;
            letter-spacing: -0.04em;
        }

        .hero p {
            max-width: 720px;
            margin: 0 auto 27px;
            color: rgba(255, 255, 255, 0.92);
            font-size: clamp(1rem, 2vw, 1.15rem);
        }

        .actions {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
            justify-content: center;
        }

        .btn {
            display: inline-flex;
            gap: 9px;
            align-items: center;
            justify-content: center;
            min-height: 45px;
            padding: 10px 19px;
            font-weight: 700;
            border: 1px solid transparent;
            border-radius: 999px;
            cursor: pointer;
            transition: transform 0.18s ease;
        }

        .btn:hover {
            transform: translateY(-2px);
        }

        .btn-primary {
            color: #032735;
            background: var(--accent);
        }

        .btn-primary:hover {
            background: #26d4ed;
        }

        .btn-outline {
            color: white;
            background: transparent;
            border-color: rgba(255, 255, 255, 0.6);
        }

        /* Common sections */

        .section {
            padding: 68px 0;
        }

        .section.alt {
            background: var(--surface);
        }

        .section-heading {
            max-width: 660px;
            margin: 0 auto 30px;
            text-align: center;
        }

        .section-heading h2 {
            margin: 0 0 8px;
            font-family: Poppins, sans-serif;
            font-size: clamp(1.65rem, 3vw, 2.25rem);
        }

        .section-heading p {
            margin: 0;
            color: var(--muted);
        }

        .grid {
            display: grid;
            gap: 20px;
        }

        /* Categories */

        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            padding: 22px 12px;
            text-align: center;
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            box-shadow: 0 5px 16px rgba(10, 37, 64, 0.04);
            cursor: pointer;
            transition: 0.18s;
        }

        .cat-card:hover,
        .cat-card:focus-visible {
            border-color: rgba(0, 184, 217, 0.55);
            box-shadow: var(--shadow);
            transform: translateY(-5px);
        }

        .cat-icon {
            display: grid;
            place-items: center;
            width: 55px;
            height: 55px;
            margin: 0 auto 10px;
            color: var(--accent-dark);
            font-size: 23px;
            background: #e8f9fc;
            border-radius: 15px;
        }

        .cat-card h3 {
            margin: 0;
            font-size: 15px;
        }

        /* Product toolbar */

        .toolbar {
            display: flex;
            gap: 14px;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .result-count {
            font-weight: 600;
        }

        .clear-btn {
            padding: 8px 13px;
            color: var(--primary);
            background: white;
            border: 1px solid var(--border);
            border-radius: 999px;
            cursor: pointer;
        }

        /* Products */

        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            position: relative;
            display: flex;
            flex-direction: column;
            overflow: hidden;
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            box-shadow: 0 6px 20px rgba(10, 37, 64, 0.05);
            transition: 0.2s;
        }

        .product:hover {
            box-shadow: var(--shadow);
            transform: translateY(-5px);
        }

        .product-img-wrap {
            overflow: hidden;
            aspect-ratio: 4 / 3;
            background: var(--surface);
        }

        .product img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.25s;
        }

        .product:hover img {
            transform: scale(1.035);
        }

        .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            z-index: 2;
            padding: 5px 9px;
            color: white;
            font-size: 12px;
            font-weight: 700;
            background: var(--success);
            border-radius: 8px;
        }

        .badge.sale {
            background: var(--danger);
        }

        .product-body {
            display: flex;
            flex: 1;
            flex-direction: column;
            gap: 9px;
            padding: 16px;
        }

        .category-label {
            color: var(--muted);
            font-size: 13px;
            text-transform: capitalize;
        }

        .product h3 {
            margin: 0;
            font-size: 16px;
        }

        .price-row {
            display: flex;
            gap: 8px;
            align-items: flex-end;
            justify-content: space-between;
            margin-top: auto;
        }

        .price {
            font-size: 18px;
            font-weight: 800;
        }

        .old-price {
            color: var(--muted);
            font-size: 13px;
            text-decoration: line-through;
        }

        .rating {
            color: var(--warning);
            font-size: 12px;
            white-space: nowrap;
        }

        .rating span {
            color: var(--muted);
        }

        .product-footer {
            display: flex;
            gap: 8px;
            padding: 0 16px 16px;
        }

        .add-btn {
            flex: 1;
            padding: 11px;
            color: white;
            font-weight: 700;
            background: var(--primary);
            border: 0;
            border-radius: 10px;
            cursor: pointer;
        }

        .add-btn:hover {
            background: var(--primary-light);
        }

        .add-btn:disabled {
            background: var(--success);
        }

        .wish-btn {
            width: 44px;
            background: white;
            border: 1px solid var(--border);
            border-radius: 10px;
            cursor: pointer;
        }

        .wish-btn.active {
            color: var(--danger);
            background: #fff4f4;
            border-color: #ffc7ca;
        }

        .empty-state {
            grid-column: 1 / -1;
            padding: 42px;
            text-align: center;
            background: white;
            border: 1px dashed var(--border);
            border-radius: var(--radius);
        }

        .empty-state i {
            color: var(--muted);
            font-size: 32px;
        }

        /* Deal */

        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;
            overflow: hidden;
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
        }

        .deal > img {
            width: 100%;
            height: 100%;
            min-height: 390px;
            object-fit: cover;
        }

        .deal-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: clamp(26px, 5vw, 54px);
        }

        .deal-content h3 {
            margin: 15px 0 8px;
            font-family: Poppins, sans-serif;
            font-size: clamp(1.7rem, 3vw, 2.45rem);
        }

        .deal-label {
            width: max-content;
            color: var(--primary);
            background: var(--surface);
            border-color: var(--border);
        }

        .timer {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin: 18px 0;
        }

        .time-box {
            min-width: 76px;
            padding: 11px;
            color: white;
            text-align: center;
            background: var(--primary);
            border-radius: 11px;
        }

        .time-box strong {
            display: block;
            font-size: 19px;
        }

        .time-box span {
            font-size: 11px;
            opacity: 0.8;
        }

        .deal-price {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            align-items: center;
        }

        .discount {
            padding: 5px 9px;
            color: white;
            font-weight: 700;
            background: var(--danger);
            border-radius: 7px;
        }

        /* Testimonials */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .testimonial {
            padding: 24px;
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
        }

        .reviewer {
            display: flex;
            gap: 11px;
            align-items: center;
        }

        .reviewer img {
            width: 46px;
            height: 46px;
            object-fit: cover;
            border-radius: 50%;
        }

        .reviewer strong {
            display: block;
        }

        /* Newsletter */

        .newsletter {
            padding: clamp(28px, 5vw, 48px);
            color: white;
            text-align: center;
            background: linear-gradient(
                135deg,
                var(--primary),
                #124f7d
            );
            border-radius: var(--radius);
        }

        .newsletter h2 {
            margin: 0 0 6px;
            font-family: Poppins, sans-serif;
            font-size: 2rem;
        }

        .newsletter p {
            margin: 0 0 20px;
            color: #e8f4fb;
        }

        .newsletter form {
            display: flex;
            flex-wrap: wrap;
            gap: 9px;
            justify-content: center;
        }

        .newsletter input {
            width: min(390px, 100%);
            min-height: 47px;
            padding: 10px 17px;
            border: 1px solid transparent;
            border-radius: 999px;
            outline: 0;
        }

        .form-message {
            min-height: 22px;
            margin-top: 10px;
            font-size: 14px;
        }

        /* Footer */

        footer {
            padding: 44px 0 20px;
            color: #d7e2eb;
            background: #071e33;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.5fr 1fr 1fr;
            gap: 34px;
        }

        .footer-grid h3,
        .footer-grid h4 {
            margin-top: 0;
            color: white;
        }

        .footer-links {
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .footer-links li {
            margin: 8px 0;
        }

        .footer-links a:hover {
            color: var(--accent);
        }

        .socials {
            display: flex;
            gap: 7px;
        }

        .socials .icon-btn {
            color: white;
            background: rgba(255, 255, 255, 0.08);
        }

        .copyright {
            padding-top: 20px;
            margin-top: 30px;
            color: #aebdcc;
            font-size: 13px;
            text-align: center;
            border-top: 1px solid rgba(255, 255, 255, 0.13);
        }

        /* Toast notification */

        .toast {
            position: fixed;
            right: 18px;
            bottom: 18px;
            z-index: 100;
            max-width: 330px;
            padding: 13px 16px;
            color: white;
            background: #102d46;
            border-radius: 11px;
            box-shadow: var(--shadow);
            opacity: 0;
            transform: translateY(120px);
            transition: 0.25s;
        }

        .toast.show {
            opacity: 1;
            transform: none;
        }

        /* Responsive */

        @media (max-width: 1050px) {
            .main-nav {
                display: none;
            }

            .mobile-toggle {
                display: grid;
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .search {
                width: min(380px, 40vw);
            }
        }

        @media (max-width: 780px) {
            .header-actions .account,
            .header-actions .wishlist {
                display: none;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal > img {
                min-height: 260px;
                max-height: 350px;
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }

            .footer-about {
                grid-column: 1 / -1;
            }
        }

        @media (max-width: 560px) {
            .container {
                width: min(100% - 24px, var(--container));
            }

            .header-inner {
                gap: 7px;
            }

            .brand {
                font-size: 18px;
            }

            .search {
                flex: 1;
                width: auto;
            }

            .search input {
                font-size: 13px;
            }

            .hero {
                min-height: 480px;
            }

            .section {
                padding: 52px 0;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }

            .products {
                grid-template-columns: 1fr;
            }

            .product-img-wrap {
                aspect-ratio: 16 / 10;
            }

            .timer {
                gap: 7px;
            }

            .time-box {
                min-width: 66px;
                padding: 9px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

            .footer-about {
                grid-column: auto;
            }
        }

        @media (prefers-reduced-motion: reduce) {
            * {
                scroll-behavior: auto !important;
                transition: none !important;
            }
        }
    </style>
</head>

<body>
    #main
        Skip to main content
    </a>

    <!-- Header -->
    <header>
        <div class="container header-inner">
            <button
                class="icon-btn mobile-toggle"
                id="mobileToggle"
                type="button"
                aria-label="Open navigation"
                aria-controls="mobileMenu"
                aria-expanded="false"
            >
                <i class="fas fa-bars"></i>
            </button>

            #
                Nexus<span class="accent">Shop</span>
            </a>

            <nav class="main-nav" aria-label="Primary navigation">
                <ul>
                    <li>
                        #
                            <i class="fas fa-home"></i>
                            Home
                        </a>
                    </li>

                    <li>
                        #categories
                            <i class="fas fa-th-large"></i>
                            Categories
                        </a>
                    </li>

                    <li>
                        #products
                            <i class="fas fa-fire"></i>
                            Trending
                        </a>
                    </li>

                    <li>
                        #deals
                            <i class="fas fa-tag"></i>
                            Deals
                        </a>
                    </li>

                    <li>
                        #about
                            <i class="fas fa-circle-info"></i>
                            About
                        </a>
                    </li>
                </ul>
            </nav>

            <div class="right-header">
                <div class="search" role="search">
                    <label class="sr-only" for="searchInput">
                        Search products
                    </label>

                    <input
                        type="search"
                        id="searchInput"
                        placeholder="Search products..."
                        autocomplete="off"
                    >

                    <button
                        class="icon-btn"
                        id="searchBtn"
                        type="button"
                        aria-label="Search"
                    >
                        <i class="fas fa-search"></i>
                    </button>
                </div>

                <div class="header-actions">
                    #
                        <i class="far fa-user"></i>
                    </a>

                    <button
                        class="icon-btn wishlist"
                        type="button"
                        aria-label="Wishlist"
                    >
                        <i class="far fa-heart"></i>
                    </button>

                    <button
                        class="icon-btn cart"
                        id="cartBtn"
                        type="button"
                        aria-label="Shopping cart, 0 items"
                    >
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </button>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div class="mobile-menu" id="mobileMenu">
            <nav class="container" aria-label="Mobile navigation">
                <ul>
                    <li>#Home</a></li>
                    <li>#categoriesCategories</a></li>
                    <li>#productsTrending products</a></li>
                    <li>#dealsDeals</a></li>
                    <li>#aboutAbout</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main id="main">
        <!-- Hero -->
        <section class="hero" aria-labelledby="heroTitle">
            <div class="hero-content">
                <span class="eyebrow">
                    Free shipping on selected orders
                </span>

                <h1 id="heroTitle">
                    Fresh finds for every part of your life
                </h1>

                <p>
                    Shop popular technology, fashion, and everyday
                    essentials with simple browsing and limited-time
                    offers.
                </p>

                <div class="actions">
                    #products
                        Shop now
                        <i class="fas fa-arrow-right"></i>
                    </a>

                    #deals
                        Explore deals
                    </a>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section
            class="section container"
            id="categories"
            aria-labelledby="categoryTitle"
        >
            <div class="section-heading">
                <h2 id="categoryTitle">Shop by category</h2>
                <p>
                    Select a category to quickly find what you need.
                </p>
            </div>

            <div
                class="grid categories"
                id="categoriesGrid"
            ></div>
        </section>

        <!-- Products -->
        <section
            class="section alt"
            id="products"
            aria-labelledby="productTitle"
        >
            <div class="container">
                <div class="section-heading">
                    <h2 id="productTitle">Trending products</h2>
                    <p>
                        Popular products selected from across our store.
                    </p>
                </div>

                <div class="toolbar">
                    <div
                        class="result-count"
                        id="resultCount"
                        aria-live="polite"
                    ></div>

                    <button
                        class="clear-btn"
                        id="clearFilter"
                        type="button"
                        hidden
                    >
                        Clear filter
                    </button>
                </div>

                <div
                    class="grid products"
                    id="productsGrid"
                    aria-live="polite"
                ></div>
            </div>
        </section>

        <!-- Deal -->
        <section
            class="section container"
            id="deals"
            aria-labelledby="dealTitle"
        >
            <div class="section-heading">
                <h2 id="dealTitle">Today's flash deal</h2>
                <p>
                    A limited-time offer while stock lasts.
                </p>
            </div>

            <div class="deal">
                https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80

                <div class="deal-content">
                    <span class="eyebrow deal-label">
                        Limited stock
                    </span>

                    <h3>MacBook Air M2</h3>

                    <p class="muted">
                        A thin and lightweight laptop with fast,
                        quiet performance.
                    </p>

                    <div
                        class="timer"
                        aria-label="Time remaining in sale"
                    >
                        <div class="time-box">
                            <strong id="dealDays">0</strong>
                            <span>Days</span>
                        </div>

                        <div class="time-box">
                            <strong id="dealHours">00</strong>
                            <span>Hours</span>
                        </div>

                        <div class="time-box">
                            <strong id="dealMinutes">00</strong>
                            <span>Minutes</span>
                        </div>

                        <div class="time-box">
                            <strong id="dealSeconds">00</strong>
                            <span>Seconds</span>
                        </div>
                    </div>

                    <div class="deal-price">
                        <span class="price">$999</span>
                        <span class="old-price">$1,199</span>
                        <span class="discount">Save 17%</span>
                    </div>

                    <p>
                        <strong>Only 12 items left</strong>
                        at this price.
                    </p>

                    <div>
                        <button
                            class="btn btn-primary"
                            id="buyDeal"
                            type="button"
                        >
                            Add deal to cart
                        </button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section
            class="section alt"
            aria-labelledby="reviewTitle"
        >
            <div class="container">
                <div class="section-heading">
                    <h2 id="reviewTitle">
                        Loved by our customers
                    </h2>

                    <p>
                        Recent feedback from verified buyers.
                    </p>
                </div>

                <div class="testimonials">
                    <article class="testimonial">
                        <div
                            class="rating"
                            aria-label="5 out of 5 stars"
                        >
                            ★★★★★
                        </div>

                        <p>
                            “Fast delivery and helpful support.
                            The product was exactly as described.”
                        </p>

                        <div class="reviewer">
                            https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80

                            <div>
                                <strong>Ava Martin</strong>
                                <span class="muted">
                                    Verified buyer
                                </span>
                            </div>
                        </div>
                    </article>

                    <article class="testimonial">
                        <div
                            class="rating"
                            aria-label="4 out of 5 stars"
                        >
                            ★★★★☆
                        </div>

                        <p>
                            “A wide selection and a smooth shopping
                            experience. I will shop here again.”
                        </p>

                        <div class="reviewer">
                            https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80

                            <div>
                                <strong>Michael Lee</strong>
                                <span class="muted">
                                    Frequent buyer
                                </span>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section
            class="section container"
            aria-labelledby="newsTitle"
        >
            <div class="newsletter">
                <h2 id="newsTitle">
                    Get offers in your inbox
                </h2>

                <p>
                    Subscribe for new arrivals and occasional
                    special offers.
                </p>

                <form id="newsletterForm" novalidate>
                    <label
                        class="sr-only"
                        for="newsletterEmail"
                    >
                        Email address
                    </label>

                    <input
                        id="newsletterEmail"
                        type="email"
                        placeholder="you@example.com"
                        autocomplete="email"
                        required
                    >

                    <button
                        class="btn btn-primary"
                        type="submit"
                    >
                        Subscribe
                    </button>
                </form>

                <div
                    class="form-message"
                    id="newsletterMsg"
                    role="status"
                ></div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer id="about">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-about">
                    <h3>NexusShop</h3>

                    <p>
                        A clean and responsive e-commerce demonstration
                        built with HTML, CSS, and JavaScript.
                    </p>

                    <div class="socials">
                        #
                            <i class="fab fa-facebook-f"></i>
                        </a>

                        #
                            <i class="fab fa-twitter"></i>
                        </a>

                        #
                            <i class="fab fa-instagram"></i>
                        </a>
                    </div>
                </div>

                <div>
                    <h4>Company</h4>

                    <ul class="footer-links">
                        <li>#aboutAbout us</a></li>
                        <li>#Careers</a></li>
                        <li>#Press</a></li>
                    </ul>
                </div>

                <div>
                    <h4>Support</h4>

                    <ul class="footer-links">
                        <li>#Help center</a></li>
                        <li>
                            #Shipping and returns</a>
                        </li>
                        <li>#Contact</a></li>
                    </ul>
                </div>
            </div>

            <div class="copyright">
                © <span id="year"></span>
                NexusShop. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- Notification -->
    <div
        class="toast"
        id="toast"
        role="status"
        aria-live="polite"
    ></div>

    <script>
        // Category data
        const CATEGORIES = [
            {
                id: "phones",
                name: "Smartphones",
                icon: "fa-mobile-screen-button"
            },
            {
                id: "laptops",
                name: "Laptops",
                icon: "fa-laptop"
            },
            {
                id: "clothing",
                name: "Clothing",
                icon: "fa-shirt"
            },
            {
                id: "gadgets",
                name: "Gadgets",
                icon: "fa-headphones"
            },
            {
                id: "footwear",
                name: "Footwear",
                icon: "fa-shoe-prints"
            },
            {
                id: "accessories",
                name: "Accessories",
                icon: "fa-clock"
            }
        ];

        // Product data
        const PRODUCTS = [
            {
                id: 1,
                title: "iPhone 14 Pro Max",
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: "New",
                img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=80",
                category: "phones"
            },
            {
                id: 2,
                title: "MacBook Pro 14-inch",
                price: 1999,
                rating: 4,
                reviews: 86,
                img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=80",
                category: "laptops"
            },
            {
                id: 3,
                title: "Apple Watch Series 8",
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: "-13%",
                img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80",
                category: "accessories"
            },
            {
                id: 4,
                title: "Nike Air Max 270",
                price: 150,
                rating: 4,
                reviews: 53,
                img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80",
                category: "footwear"
            },
            {
                id: 5,
                title: "Sony Mirrorless Camera",
                price: 2499,
                rating: 5,
                reviews: 42,
                img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=80",
                category: "gadgets"
            },
            {
                id: 6,
                title: "Classic Eau de Parfum",
                price: 120,
                rating: 5,
                reviews: 189,
                img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=80",
                category: "accessories"
            },
            {
                id: 7,
                title: "Everyday Travel Backpack",
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80",
                category: "accessories"
            },
            {
                id: 8,
                title: "Sony Wireless Headphones",
                price: 399,
                rating: 5,
                reviews: 156,
                img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80",
                category: "gadgets"
            }
        ];

        // Element references
        const categoriesGrid =
            document.getElementById("categoriesGrid");

        const productsGrid =
            document.getElementById("productsGrid");

        const searchInput =
            document.getElementById("searchInput");

        const searchButton =
            document.getElementById("searchBtn");

        const resultCount =
            document.getElementById("resultCount");

        const clearFilter =
            document.getElementById("clearFilter");

        const cartCountElement =
            document.getElementById("cartCount");

        const cartButton =
            document.getElementById("cartBtn");

        let cartCount = 0;
        let toastTimer;

        // Prevent HTML injection
        function escapeHtml(text) {
            return String(text).replace(
                /[&<>"']/g,
                function (character) {
                    const entities = {
                        "&": "&amp;",
                        "<": "&lt;",
                        ">": "&gt;",
                        '"': "&quot;",
                        "'": "&#39;"
                    };

                    return entities[character];
                }
            );
        }

        // Show a small notification
        function showToast(message) {
            const toast = document.getElementById("toast");

            toast.textContent = message;
            toast.classList.add("show");

            clearTimeout(toastTimer);

            toastTimer = setTimeout(function () {
                toast.classList.remove("show");
            }, 2400);
        }

        // Render category buttons
        function renderCategories() {
            categoriesGrid.innerHTML = CATEGORIES.map(
                function (category) {
                    return `
                        <button
                            class="cat-card"
                            type="button"
                            data-category="${category.id}"
                        >
                            <span class="cat-icon">
                                <i class="fas ${category.icon}"></i>
                            </span>

                            <h3>${category.name}</h3>
                        </button>
                    `;
                }
            ).join("");
        }

        // Render product cards
        function renderProducts(productList) {
            resultCount.textContent =
                `${productList.length} product${
                    productList.length === 1 ? "" : "s"
                } found`;

            if (productList.length === 0) {
                productsGrid.innerHTML = `
                    <div class="empty-state">
                        <i class="fas fa-magnifying-glass"></i>

                        <h3>No products found</h3>

                        <p class="muted">
                            Try another keyword or clear the
                            current filter.
                        </p>
                    </div>
                `;

                return;
            }

            productsGrid.innerHTML = productList.map(
                function (product) {
                    const badge = product.badge
                        ? `
                            <span class="badge ${
                                product.badge.startsWith("-")
                                    ? "sale"
                                    : ""
                            }">
                                ${escapeHtml(product.badge)}
                            </span>
                        `
                        : "";

                    const oldPrice = product.oldPrice
                        ? `
                            <div class="old-price">
                                $${product.oldPrice.toLocaleString()}
                            </div>
                        `
                        : "";

                    const filledStars =
                        "★".repeat(product.rating);

                    const emptyStars =
                        "☆".repeat(5 - product.rating);

                    return `
                        <article class="product">
                            ${badge}

                            <div class="product-img-wrap">
                                <img
                                    src="${product.img}"
                                    alt="${escapeHtml(product.title)}"
                                    loading="lazy"
                                >
                            </div>

                            <div class="product-body">
                                <span class="category-label">
                                    ${escapeHtml(product.category)}
                                </span>

                                <h3>
                                    ${escapeHtml(product.title)}
                                </h3>

                                <div class="price-row">
                                    <div>
                                        <div class="price">
                                            $${product.price.toLocaleString()}
                                        </div>

                                        ${oldPrice}
                                    </div>

                                    <div
                                        class="rating"
                                        aria-label="${product.rating} out of 5 stars"
                                    >
                                        ${filledStars}${emptyStars}

                                        <span>
                                            (${product.reviews})
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="product-footer">
                                <button
                                    class="add-btn"
                                    type="button"
                                    data-id="${product.id}"
                                >
                                    <i class="fas fa-cart-plus"></i>
                                    Add to cart
                                </button>

                                <button
                                    class="wish-btn"
                                    type="button"
                                    aria-label="Add ${escapeHtml(
                                        product.title
                                    )} to wishlist"
                                >
                                    <i class="far fa-heart"></i>
                                </button>
                            </div>
                        </article>
                    `;
                }
            ).join("");
        }

        // Search or filter products
        function filterProducts(query) {
            const cleanedQuery = String(query || "")
                .trim()
                .toLowerCase();

            if (!cleanedQuery) {
                renderProducts(PRODUCTS);
                clearFilter.hidden = true;
                return;
            }

            const filteredProducts = PRODUCTS.filter(
                function (product) {
                    return (
                        product.title
                            .toLowerCase()
                            .includes(cleanedQuery) ||
                        product.category
                            .toLowerCase()
                            .includes(cleanedQuery)
                    );
                }
            );

            renderProducts(filteredProducts);
            clearFilter.hidden = false;
        }

        // Update cart count
        function updateCart() {
            cartCountElement.textContent = cartCount;

            cartButton.setAttribute(
                "aria-label",
                `Shopping cart, ${cartCount} item${
                    cartCount === 1 ? "" : "s"
                }`
            );
        }

        // Category click handling
        categoriesGrid.addEventListener(
            "click",
            function (event) {
                const categoryButton =
                    event.target.closest("[data-category]");

                if (!categoryButton) {
                    return;
                }

                const category = CATEGORIES.find(
                    function (item) {
                        return (
                            item.id ===
                            categoryButton.dataset.category
                        );
                    }
                );

                if (!category) {
                    return;
                }

                searchInput.value = category.name;
                filterProducts(category.id);

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

                showToast(`Showing ${category.name}`);
            }
        );

        // Product button handling
        productsGrid.addEventListener(
            "click",
            function (event) {
                const addButton =
                    event.target.closest(".add-btn");

                if (addButton) {
                    const productId =
                        Number(addButton.dataset.id);

                    const product = PRODUCTS.find(
                        function (item) {
                            return item.id === productId;
                        }
                    );

                    if (!product) {
                        return;
                    }

                    cartCount += 1;
                    updateCart();

                    addButton.disabled = true;
                    addButton.innerHTML = `
                        <i class="fas fa-check"></i>
                        Added
                    `;

                    showToast(
                        `${product.title} added to cart`
                    );

                    setTimeout(function () {
                        addButton.disabled = false;
                        addButton.innerHTML = `
                            <i class="fas fa-cart-plus"></i>
                            Add to cart
                        `;
                    }, 1200);

                    return;
                }

                const wishButton =
                    event.target.closest(".wish-btn");

                if (wishButton) {
                    wishButton.classList.toggle("active");

                    const isActive =
                        wishButton.classList.contains("active");

                    wishButton.innerHTML = `
                        <i class="${
                            isActive ? "fas" : "far"
                        } fa-heart"></i>
                    `;

                    showToast(
                        isActive
                            ? "Added to wishlist"
                            : "Removed from wishlist"
                    );
                }
            }
        );

        // Search button
        searchButton.addEventListener(
            "click",
            function () {
                filterProducts(searchInput.value);
            }
        );

        // Live search
        searchInput.addEventListener(
            "input",
            function () {
                filterProducts(searchInput.value);
            }
        );

        // Clear filter
        clearFilter.addEventListener(
            "click",
            function () {
                searchInput.value = "";
                filterProducts("");
                searchInput.focus();
            }
        );

        // Cart button
        cartButton.addEventListener(
            "click",
            function () {
                if (cartCount === 0) {
                    showToast("Your cart is empty");
                    return;
                }

                showToast(
                    `Your cart contains ${cartCount} item${
                        cartCount === 1 ? "" : "s"
                    }`
                );
            }
        );

        // Mobile navigation
        const mobileToggle =
            document.getElementById("mobileToggle");

        const mobileMenu =
            document.getElementById("mobileMenu");

        mobileToggle.addEventListener(
            "click",
            function () {
                const isOpen =
                    mobileToggle.getAttribute(
                        "aria-expanded"
                    ) === "true";

                mobileToggle.setAttribute(
                    "aria-expanded",
                    String(!isOpen)
                );

                mobileToggle.setAttribute(
                    "aria-label",
                    isOpen
                        ? "Open navigation"
                        : "Close navigation"
                );

                mobileToggle.innerHTML = `
                    <i class="fas fa-${
                        isOpen ? "bars" : "xmark"
                    }"></i>
                `;

                mobileMenu.style.display =
                    isOpen ? "none" : "block";
            }
        );

        mobileMenu.addEventListener(
            "click",
            function (event) {
                if (!event.target.closest("a")) {
                    return;
                }

                mobileMenu.style.display = "none";

                mobileToggle.setAttribute(
                    "aria-expanded",
                    "false"
                );

                mobileToggle.setAttribute(
                    "aria-label",
                    "Open navigation"
                );

                mobileToggle.innerHTML = `
                    <i class="fas fa-bars"></i>
                `;
            }
        );

        // Newsletter validation
        document
            .getElementById("newsletterForm")
            .addEventListener(
                "submit",
                function (event) {
                    event.preventDefault();

                    const emailInput =
                        document.getElementById(
                            "newsletterEmail"
                        );

                    const message =
                        document.getElementById(
                            "newsletterMsg"
                        );

                    if (!emailInput.validity.valid) {
                        message.textContent =
                            "Please enter a valid email address.";

                        message.style.color = "#ffd2d4";
                        emailInput.focus();
                        return;
                    }

                    message.textContent =
                        "Thank you. You are now subscribed.";

                    message.style.color = "#bfffd6";
                    emailInput.value = "";
                }
            );

        // Add flash deal to cart
        document
            .getElementById("buyDeal")
            .addEventListener(
                "click",
                function () {
                    cartCount += 1;
                    updateCart();

                    showToast(
                        "MacBook Air M2 added to cart"
                    );
                }
            );

        // Countdown timer
        function setupDealTimer() {
            const targetTime =
                Date.now() +
                (24 * 60 + 36) * 60 * 1000;

            function updateTimer() {
                const difference = Math.max(
                    0,
                    targetTime - Date.now()
                );

                const day = 24 * 60 * 60 * 1000;
                const hour = 60 * 60 * 1000;
                const minute = 60 * 1000;

                const days = Math.floor(
                    difference / day
                );

                const hours = Math.floor(
                    (difference % day) / hour
                );

                const minutes = Math.floor(
                    (difference % hour) / minute
                );

                const seconds = Math.floor(
                    (difference % minute) / 1000
                );

                document.getElementById(
                    "dealDays"
                ).textContent = days;

                document.getElementById(
                    "dealHours"
                ).textContent = String(hours).padStart(
                    2,
                    "0"
                );

                document.getElementById(
                    "dealMinutes"
                ).textContent = String(
                    minutes
                ).padStart(2, "0");

                document.getElementById(
                    "dealSeconds"
                ).textContent = String(
                    seconds
                ).padStart(2, "0");
            }

            updateTimer();
            setInterval(updateTimer, 1000);
        }

        // Initialize website
        function initializeWebsite() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCart();
            setupDealTimer();

            document.getElementById(
                "year"
            ).textContent = new Date().getFullYear();
        }

        initializeWebsite();
    </script>
</body>
</html>
