<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0"
    >

    <meta
        name="description"
        content="HappyKids colorful and family-friendly shopping website"
    >

    <title>HappyKids Store</title>

    <!-- Google Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Fredoka:wght@400;500;600;700&family=Nunito:wght@400;600;700   <!-- Font Awesome -->
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    >

    <style>
        :root {
            --purple: #6c5ce7;
            --purple-dark: #5142c7;
            --pink: #ff6b9d;
            --yellow: #ffd93d;
            --blue: #4dabf7;
            --green: #51cf66;
            --orange: #ff922b;
            --red: #ff6b6b;

            --background: #fffaf1;
            --surface: #ffffff;
            --text: #35324a;
            --muted: #746f86;
            --border: #eee8fa;

            --container: 1180px;
            --radius: 24px;
            --shadow: 0 12px 30px rgba(91, 70, 150, 0.12);
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
            background: var(--background);
            font-family: "Nunito", sans-serif;
            line-height: 1.5;
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
            outline: 4px solid rgba(77, 171, 247, 0.4);
            outline-offset: 3px;
        }

        .container {
            width: min(100% - 32px, var(--container));
            margin: 0 auto;
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
            top: -70px;
            left: 16px;
            z-index: 9999;
            padding: 12px 16px;
            color: white;
            background: var(--purple);
            border-radius: 12px;
        }

        .skip-link:focus {
            top: 16px;
        }

        /* Top message */

        .parent-message {
            padding: 7px 16px;
            color: #463c10;
            font-size: 14px;
            font-weight: 800;
            text-align: center;
            background: var(--yellow);
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

        .header-content {
            display: flex;
            gap: 18px;
            align-items: center;
            justify-content: space-between;
            min-height: 78px;
        }

        .brand {
            display: flex;
            gap: 10px;
            align-items: center;
            font-family: "Fredoka", sans-serif;
            font-size: 25px;
            font-weight: 700;
            white-space: nowrap;
        }

        .brand-icon {
            display: grid;
            place-items: center;
            width: 48px;
            height: 48px;
            color: white;
            background: linear-gradient(
                135deg,
                var(--pink),
                var(--purple)
            );
            border-radius: 16px;
            transform: rotate(-5deg);
        }

        .brand-kids {
            color: var(--pink);
        }

        .main-navigation ul {
            display: flex;
            gap: 4px;
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .main-navigation a {
            display: flex;
            gap: 7px;
            align-items: center;
            padding: 10px 12px;
            font-weight: 800;
            border-radius: 14px;
        }

        .main-navigation a:hover {
            color: var(--purple);
            background: #f1edff;
        }

        .header-right {
            display: flex;
            gap: 9px;
            align-items: center;
            min-width: 0;
        }

        .search {
            display: flex;
            align-items: center;
            width: min(310px, 29vw);
            padding: 3px 5px 3px 15px;
            background: #f7f4ff;
            border: 2px solid transparent;
            border-radius: 999px;
        }

        .search:focus-within {
            background: white;
            border-color: var(--purple);
        }

        .search input {
            width: 100%;
            min-width: 0;
            padding: 9px 0;
            color: var(--text);
            background: transparent;
            border: 0;
            outline: 0;
        }

        .icon-button {
            position: relative;
            display: inline-grid;
            place-items: center;
            flex: 0 0 auto;
            width: 44px;
            height: 44px;
            color: var(--purple);
            background: #f4f0ff;
            border: 0;
            border-radius: 15px;
            cursor: pointer;
        }

        .icon-button:hover {
            color: white;
            background: var(--purple);
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            display: grid;
            place-items: center;
            min-width: 21px;
            height: 21px;
            padding: 0 5px;
            color: white;
            font-size: 11px;
            font-weight: 800;
            background: var(--pink);
            border: 2px solid white;
            border-radius: 999px;
        }

        .mobile-toggle {
            display: none;
        }

        .mobile-menu {
            display: none;
            padding: 9px 0 18px;
            background: white;
            border-top: 1px solid var(--border);
        }

        .mobile-menu ul {
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .mobile-menu a {
            display: block;
            padding: 12px 14px;
            font-weight: 800;
            border-radius: 14px;
        }

        .mobile-menu a:hover {
            color: var(--purple);
            background: #f4f0ff;
        }

        /* Hero */

        .hero {
            position: relative;
            overflow: hidden;
            padding: 76px 0;
            background:
                radial-gradient(
                    circle at 10% 15%,
                    rgba(255, 217, 61, 0.8) 0 55px,
                    transparent 56px
                ),
                radial-gradient(
                    circle at 90% 20%,
                    rgba(255, 107, 157, 0.35) 0 90px,
                    transparent 91px
                ),
                linear-gradient(135deg, #ede9ff, #fff2c8);
        }

        .hero::before,
        .hero::after {
            position: absolute;
            font-size: 70px;
            opacity: 0.2;
            content: "★";
        }

        .hero::before {
            top: 30px;
            left: 4%;
            color: var(--purple);
            transform: rotate(-15deg);
        }

        .hero::after {
            right: 5%;
            bottom: 30px;
            color: var(--pink);
            transform: rotate(18deg);
        }

        .hero-grid {
            position: relative;
            z-index: 2;
            display: grid;
            grid-template-columns: 1.1fr 0.9fr;
            gap: 45px;
            align-items: center;
        }

        .hero-label {
            display: inline-flex;
            gap: 8px;
            align-items: center;
            padding: 8px 14px;
            color: #5e4b00;
            font-weight: 800;
            background: var(--yellow);
            border-radius: 999px;
        }

        .hero h1 {
            max-width: 680px;
            margin: 18px 0;
            font-family: "Fredoka", sans-serif;
            font-size: clamp(2.5rem, 6vw, 5rem);
            line-height: 0.98;
            letter-spacing: -0.04em;
        }

        .hero h1 span {
            color: var(--pink);
        }

        .hero-description {
            max-width: 630px;
            margin: 0 0 27px;
            color: var(--muted);
            font-size: clamp(1rem, 2vw, 1.2rem);
            font-weight: 600;
        }

        .hero-actions {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
        }

        .button {
            display: inline-flex;
            gap: 9px;
            align-items: center;
            justify-content: center;
            min-height: 49px;
            padding: 11px 21px;
            font-weight: 800;
            border: 2px solid transparent;
            border-radius: 16px;
            cursor: pointer;
            transition:
                transform 0.2s ease,
                box-shadow 0.2s ease;
        }

        .button:hover {
            box-shadow: 0 9px 18px rgba(81, 66, 199, 0.2);
            transform: translateY(-3px);
        }

        .button-primary {
            color: white;
            background: var(--purple);
        }

        .button-primary:hover {
            background: var(--purple-dark);
        }

        .button-secondary {
            color: var(--purple);
            background: white;
            border-color: #ded6ff;
        }

        .hero-picture {
            position: relative;
        }

        .hero-picture-card {
            padding: 15px;
            background: white;
            border: 5px solid white;
            border-radius: 35px;
            box-shadow: var(--shadow);
            transform: rotate(3deg);
        }

        .hero-picture-card img {
            width: 100%;
            height: 390px;
            object-fit: cover;
            border-radius: 25px;
        }

        .floating-badge {
            position: absolute;
            bottom: 25px;
            left: -25px;
            display: flex;
            gap: 10px;
            align-items: center;
            padding: 13px 16px;
            font-weight: 800;
            background: white;
            border-radius: 18px;
            box-shadow: var(--shadow);
            transform: rotate(-4deg);
        }

        .floating-badge i {
            color: var(--green);
            font-size: 25px;
        }

        /* Sections */

        .section {
            padding: 72px 0;
        }

        .section-colored {
            background: #f4f0ff;
        }

        .section-heading {
            max-width: 700px;
            margin: 0 auto 34px;
            text-align: center;
        }

        .section-heading h2 {
            margin: 0 0 8px;
            font-family: "Fredoka", sans-serif;
            font-size: clamp(1.9rem, 4vw, 2.8rem);
        }

        .section-heading p {
            margin: 0;
            color: var(--muted);
            font-size: 17px;
            font-weight: 600;
        }

        /* Categories */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }

        .category-card {
            padding: 23px 12px;
            text-align: center;
            background: white;
            border: 2px solid transparent;
            border-radius: var(--radius);
            box-shadow: 0 8px 20px rgba(91, 70, 150, 0.08);
            cursor: pointer;
            transition: 0.2s ease;
        }

        .category-card:hover {
            border-color: var(--purple);
            box-shadow: var(--shadow);
            transform: translateY(-7px);
        }

        .category-icon {
            display: grid;
            place-items: center;
            width: 67px;
            height: 67px;
            margin: 0 auto 12px;
            color: white;
            font-size: 28px;
            border-radius: 22px;
            transform: rotate(-3deg);
        }

        .category-card:nth-child(1) .category-icon {
            background: var(--purple);
        }

        .category-card:nth-child(2) .category-icon {
            background: var(--pink);
        }

        .category-card:nth-child(3) .category-icon {
            background: var(--blue);
        }

        .category-card:nth-child(4) .category-icon {
            background: var(--green);
        }

        .category-card:nth-child(5) .category-icon {
            background: var(--orange);
        }

        .category-card:nth-child(6) .category-icon {
            color: #5e4b00;
            background: var(--yellow);
        }

        .category-card h3 {
            margin: 0;
            font-family: "Fredoka", sans-serif;
            font-size: 17px;
        }

        /* Product toolbar */

        .product-toolbar {
            display: flex;
            gap: 15px;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 21px;
        }

        .result-count {
            font-weight: 800;
        }

        .clear-filter {
            padding: 9px 15px;
            color: var(--purple);
            font-weight: 800;
            background: white;
            border: 2px solid #ded6ff;
            border-radius: 999px;
            cursor: pointer;
        }

        /* Products */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 22px;
        }

        .product-card {
            position: relative;
            display: flex;
            flex-direction: column;
            overflow: hidden;
            background: white;
            border: 2px solid transparent;
            border-radius: var(--radius);
            box-shadow: 0 10px 24px rgba(91, 70, 150, 0.09);
            transition: 0.2s ease;
        }

        .product-card:hover {
            border-color: #ded6ff;
            box-shadow: var(--shadow);
            transform: translateY(-7px);
        }

        .product-image {
            overflow: hidden;
            aspect-ratio: 4 / 3;
            background: #f4f0ff;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.3s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.05);
        }

        .product-badge {
            position: absolute;
            top: 13px;
            left: 13px;
            z-index: 2;
            padding: 6px 10px;
            color: white;
            font-size: 12px;
            font-weight: 800;
            background: var(--pink);
            border-radius: 10px;
        }

        .product-badge.sale {
            background: var(--red);
        }

        .product-content {
            display: flex;
            flex: 1;
            flex-direction: column;
            gap: 8px;
            padding: 17px;
        }

        .product-category {
            color: var(--purple);
            font-size: 13px;
            font-weight: 800;
            text-transform: capitalize;
        }

        .product-content h3 {
            margin: 0;
            font-family: "Fredoka", sans-serif;
            font-size: 18px;
        }

        .product-description {
            margin: 0;
            color: var(--muted);
            font-size: 14px;
        }

        .product-information {
            display: flex;
            gap: 8px;
            align-items: flex-end;
            justify-content: space-between;
            margin-top: auto;
        }

        .price {
            color: var(--purple);
            font-size: 20px;
            font-weight: 900;
        }

        .old-price {
            color: var(--muted);
            font-size: 13px;
            text-decoration: line-through;
        }

        .rating {
            color: var(--orange);
            font-size: 12px;
            white-space: nowrap;
        }

        .rating span {
            color: var(--muted);
        }

        .product-actions {
            display: flex;
            gap: 9px;
            padding: 0 17px 17px;
        }

        .add-button {
            flex: 1;
            min-height: 45px;
            color: white;
            font-weight: 800;
            background: var(--purple);
            border: 0;
            border-radius: 14px;
            cursor: pointer;
        }

        .add-button:hover {
            background: var(--purple-dark);
        }

        .add-button:disabled {
            background: var(--green);
        }

        .wishlist-button {
            width: 47px;
            min-height: 45px;
            color: var(--pink);
            background: #fff0f5;
            border: 0;
            border-radius: 14px;
            cursor: pointer;
        }

        .wishlist-button.active {
            color: white;
            background: var(--pink);
        }

        .empty-state {
            grid-column: 1 / -1;
            padding: 48px 20px;
            text-align: center;
            background: white;
            border: 3px dashed #ded6ff;
            border-radius: var(--radius);
        }

        .empty-state i {
            color: var(--purple);
            font-size: 44px;
        }

        .empty-state h3 {
            font-family: "Fredoka", sans-serif;
            font-size: 24px;
        }

        /* Benefits */

        .benefits {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }

        .benefit-card {
            padding: 25px 20px;
            text-align: center;
            background: white;
            border-radius: var(--radius);
            box-shadow: 0 8px 20px rgba(91, 70, 150, 0.08);
        }

        .benefit-icon {
            display: grid;
            place-items: center;
            width: 60px;
            height: 60px;
            margin: 0 auto 13px;
            color: white;
            font-size: 24px;
            background: var(--purple);
            border-radius: 19px;
        }

        .benefit-card:nth-child(2) .benefit-icon {
            background: var(--pink);
        }

        .benefit-card:nth-child(3) .benefit-icon {
            background: var(--green);
        }

        .benefit-card:nth-child(4) .benefit-icon {
            background: var(--orange);
        }

        .benefit-card h3 {
            margin: 0 0 5px;
            font-family: "Fredoka", sans-serif;
        }

        .benefit-card p {
            margin: 0;
            color: var(--muted);
            font-size: 14px;
        }

        /* Parent section */

        .parent-section {
            display: grid;
            grid-template-columns: 0.9fr 1.1fr;
            gap: 45px;
            align-items: center;
            padding: 48px;
            color: white;
            background:
                linear-gradient(
                    135deg,
                    var(--purple),
                    #8b5cf6
                );
            border-radius: 34px;
            box-shadow: var(--shadow);
        }

        .parent-illustration {
            display: grid;
            place-items: center;
            min-height: 290px;
            font-size: 130px;
            background: rgba(255, 255, 255, 0.13);
            border-radius: 28px;
        }

        .parent-content h2 {
            margin: 0 0 12px;
            font-family: "Fredoka", sans-serif;
            font-size: clamp(2rem, 4vw, 3.2rem);
        }

        .parent-content p {
            color: rgba(255, 255, 255, 0.9);
            font-size: 17px;
        }

        .parent-list {
            padding: 0;
            margin: 22px 0 0;
            list-style: none;
        }

        .parent-list li {
            display: flex;
            gap: 10px;
            align-items: center;
            margin: 11px 0;
            font-weight: 800;
        }

        .parent-list i {
            color: var(--yellow);
        }

        /* Newsletter */

        .newsletter {
            padding: 50px 24px;
            text-align: center;
            background:
                radial-gradient(
                    circle at 8% 20%,
                    rgba(255, 217, 61, 0.9) 0 33px,
                    transparent 34px
                ),
                radial-gradient(
                    circle at 90% 85%,
                    rgba(255, 107, 157, 0.45) 0 50px,
                    transparent 51px
                ),
                #e9f7ff;
            border-radius: 32px;
        }

        .newsletter h2 {
            margin: 0 0 8px;
            font-family: "Fredoka", sans-serif;
            font-size: clamp(2rem, 4vw, 2.8rem);
        }

        .newsletter p {
            margin: 0 0 20px;
            color: var(--muted);
            font-weight: 600;
        }

        .newsletter form {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            justify-content: center;
        }

        .newsletter input {
            width: min(390px, 100%);
            min-height: 50px;
            padding: 11px 17px;
            background: white;
            border: 2px solid transparent;
            border-radius: 16px;
            outline: 0;
        }

        .newsletter input:focus {
            border-color: var(--purple);
        }

        .form-message {
            min-height: 24px;
            margin-top: 12px;
            font-weight: 800;
        }

        /* Footer */

        footer {
            padding: 50px 0 22px;
            color: #e8e5f4;
            background: #302a4a;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.5fr 1fr 1fr;
            gap: 35px;
        }

        footer h3,
        footer h4 {
            margin-top: 0;
            color: white;
            font-family: "Fredoka", sans-serif;
        }

        .footer-description {
            max-width: 420px;
        }

        .footer-links {
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .footer-links li {
            margin: 9px 0;
        }

        .footer-links a:hover {
            color: var(--yellow);
        }

        .social-links {
            display: flex;
            gap: 9px;
            margin-top: 17px;
        }

        .social-links a {
            display: grid;
            place-items: center;
            width: 43px;
            height: 43px;
            color: white;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 14px;
        }

        .social-links a:hover {
            color: var(--text);
            background: var(--yellow);
        }

        .copyright {
            padding-top: 22px;
            margin-top: 32px;
            color: #bbb5d2;
            font-size: 13px;
            text-align: center;
            border-top: 1px solid rgba(255, 255, 255, 0.12);
        }

        /* Toast */

        .toast {
            position: fixed;
            right: 20px;
            bottom: 20px;
            z-index: 200;
            max-width: 340px;
            padding: 14px 18px;
            color: white;
            font-weight: 800;
            background: var(--purple);
            border-radius: 16px;
            box-shadow: var(--shadow);
            opacity: 0;
            transform: translateY(120px);
            transition: 0.25s ease;
        }

        .toast.show {
            opacity: 1;
            transform: translateY(0);
        }

        /* Responsive */

        @media (max-width: 1050px) {
            .main-navigation {
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
                width: min(390px, 42vw);
            }
        }

        @media (max-width: 820px) {
            .hero-grid {
                grid-template-columns: 1fr;
            }

            .hero-content {
                text-align: center;
            }

            .hero-description {
                margin-right: auto;
                margin-left: auto;
            }

            .hero-actions {
                justify-content: center;
            }

            .hero-picture {
                max-width: 550px;
                margin: 0 auto;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .benefits {
                grid-template-columns: repeat(2, 1fr);
            }

            .parent-section {
                grid-template-columns: 1fr;
                padding: 32px;
            }

            .parent-illustration {
                min-height: 220px;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }

            .footer-about {
                grid-column: 1 / -1;
            }

            .header-account,
            .header-wishlist {
                display: none;
            }
        }

        @media (max-width: 570px) {
            .container {
                width: min(100% - 24px, var(--container));
            }

            .header-content {
                gap: 7px;
            }

            .brand-text {
                display: none;
            }

            .brand-icon {
                width: 43px;
                height: 43px;
            }

            .search {
                flex: 1;
                width: auto;
            }

            .search input {
                font-size: 13px;
            }

            .hero {
                padding: 58px 0;
            }

            .hero-picture-card img {
                height: 280px;
            }

            .floating-badge {
                bottom: 10px;
                left: 5px;
            }

            .section {
                padding: 55px 0;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }

            .products {
                grid-template-columns: 1fr;
            }

            .product-image {
                aspect-ratio: 16 / 10;
            }

            .benefits {
                grid-template-columns: 1fr;
            }

            .parent-section {
                padding: 25px;
            }

            .parent-illustration {
                font-size: 90px;
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
    #mainContent
        Skip to main content
    </a>

    <div class="parent-message">
        <i class="fas fa-shield-heart"></i>
        Shopping and payments should be completed with a parent or guardian.
    </div>

    <!-- Header -->
    <header>
        <div class="container header-content">
            <button
                class="icon-button mobile-toggle"
                id="mobileToggle"
                type="button"
                aria-label="Open navigation"
                aria-controls="mobileMenu"
                aria-expanded="false"
            >
                <i class="fas fa-bars"></i>
            </button>

            #
                <span class="brand-icon">
                    <i class="fas fa-star"></i>
                </span>

                <span class="brand-text">
                    Happy<span class="brand-kids">Kids</span>
                </span>
            </a>

            <nav
                class="main-navigation"
                aria-label="Main navigation"
            >
                <ul>
                    <li>
                        #
                            <i class="fas fa-house"></i>
                            Home
                        </a>
                    </li>

                    <li>
                        #categories
                            <i class="fas fa-shapes"></i>
                            Categories
                        </a>
                    </li>

                    <li>
                        #products
                            <i class="fas fa-gift"></i>
                            Products
                        </a>
                    </li>

                    <li>
                        #parents
                            <i class="fas fa-shield-heart"></i>
                            For Parents
                        </a>
                    </li>
                </ul>
            </nav>

            <div class="header-right">
                <div class="search" role="search">
                    <label class="sr-only" for="searchInput">
                        Search products
                    </label>

                    <input
                        id="searchInput"
                        type="search"
                        placeholder="Find something fun..."
                        autocomplete="off"
                    >

                    <button
                        class="icon-button"
                        id="searchButton"
                        type="button"
                        aria-label="Search products"
                    >
                        <i class="fas fa-search"></i>
                    </button>
                </div>

                <button
                    class="icon-button header-account"
                    type="button"
                    aria-label="Parent account"
                >
                    <i class="far fa-user"></i>
                </button>

                <button
                    class="icon-button header-wishlist"
                    id="headerWishlist"
                    type="button"
                    aria-label="View wishlist"
                >
                    <i class="far fa-heart"></i>
                </button>

                <button
                    class="icon-button"
                    id="cartButton"
                    type="button"
                    aria-label="Shopping cart, 0 items"
                >
                    <i class="fas fa-basket-shopping"></i>

                    <span
                        class="cart-count"
                        id="cartCount"
                    >
                        0
                    </span>
                </button>
            </div>
        </div>

        <!-- Mobile navigation -->
        <div class="mobile-menu" id="mobileMenu">
            <nav
                class="container"
                aria-label="Mobile navigation"
            >
                <ul>
                    <li>#Home</a></li>
                    <li>
                        #categoriesCategories</a>
                    </li>
                    <li>
                        #productsProducts</a>
                    </li>
                    <li>
                        #parentsFor Parents</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <main id="mainContent">
        <!-- Hero -->
        <section class="hero">
            <div class="container hero-grid">
                <div class="hero-content">
                    <span class="hero-label">
                        <i class="fas fa-sparkles"></i>
                        Learn, play and create
                    </span>

                    <h1>
                        Big smiles start with
                        <span>happy play!</span>
                    </h1>

                    <p class="hero-description">
                        Discover colorful toys, creative activities,
                        books and learning products chosen for curious
                        young minds.
                    </p>

                    <div class="hero-actions">
                        #products
                            Explore Products
                            <i class="fas fa-arrow-right"></i>
                        </a>

                        #categories
                            Browse Categories
                        </a>
                    </div>
                </div>

                <div class="hero-picture">
                    <div class="hero-picture-card">
                        https://images.unsplash.com/photo-1596461404969-9ae70f2830c1?auto=format&fit=crop&w=1000&q=80
                    </div>

                    <div class="floating-badge">
                        <i class="fas fa-circle-check"></i>

                        <span>
                            Parent-approved choices
                        </span>
                    </div>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section
            class="section"
            id="categories"
            aria-labelledby="categoryHeading"
        >
            <div class="container">
                <div class="section-heading">
                    <h2 id="categoryHeading">
                        Pick your favorite category
                    </h2>

                    <p>
                        Choose a category and discover something
                        creative, exciting and fun.
                    </p>
                </div>

                <div
                    class="categories"
                    id="categoriesGrid"
                ></div>
            </div>
        </section>

        <!-- Products -->
        <section
            class="section section-colored"
            id="products"
            aria-labelledby="productHeading"
        >
            <div class="container">
                <div class="section-heading">
                    <h2 id="productHeading">
                        Popular picks
                    </h2>

                    <p>
                        Fun products for playing, learning and creating.
                    </p>
                </div>

                <div class="product-toolbar">
                    <div
                        class="result-count"
                        id="resultCount"
                        aria-live="polite"
                    ></div>

                    <button
                        class="clear-filter"
                        id="clearFilter"
                        type="button"
                        hidden
                    >
                        Clear filter
                    </button>
                </div>

                <div
                    class="products"
                    id="productsGrid"
                    aria-live="polite"
                ></div>
            </div>
        </section>

        <!-- Benefits -->
        <section
            class="section"
            aria-labelledby="benefitHeading"
        >
            <div class="container">
                <div class="section-heading">
                    <h2 id="benefitHeading">
                        Why families choose us
                    </h2>

                    <p>
                        A simple shopping experience designed
                        with families in mind.
                    </p>
                </div>

                <div class="benefits">
                    <article class="benefit-card">
                        <div class="benefit-icon">
                            <i class="fas fa-shield-heart"></i>
                        </div>

                        <h3>Family Friendly</h3>

                        <p>
                            Clear product information for parents
                            and guardians.
                        </p>
                    </article>

                    <article class="benefit-card">
                        <div class="benefit-icon">
                            <i class="fas fa-lightbulb"></i>
                        </div>

                        <h3>Creative Learning</h3>

                        <p>
                            Products designed to encourage imagination
                            and exploration.
                        </p>
                    </article>

                    <article class="benefit-card">
                        <div class="benefit-icon">
                            <i class="fas fa-truck-fast"></i>
                        </div>

                        <h3>Quick Delivery</h3>

                        <p>
                            Clear delivery information during
                            parent checkout.
                        </p>
                    </article>

                    <article class="benefit-card">
                        <div class="benefit-icon">
                            <i class="fas fa-headset"></i>
                        </div>

                        <h3>Helpful Support</h3>

                        <p>
                            Friendly assistance for product and
                            order questions.
                        </p>
                    </article>
                </div>
            </div>
        </section>

        <!-- Parent information -->
        <section
            class="section"
            id="parents"
            aria-labelledby="parentHeading"
        >
            <div class="container">
                <div class="parent-section">
                    <div
                        class="parent-illustration"
                        aria-hidden="true"
                    >
                        👨‍👩‍👧
                    </div>

                    <div class="parent-content">
                        <h2 id="parentHeading">
                            Information for parents
                        </h2>

                        <p>
                            HappyKids is designed to make browsing
                            easy and enjoyable. Purchases, account
                            creation and personal information should
                            always be managed by a parent or guardian.
                        </p>

                        <ul class="parent-list">
                            <li>
                                <i class="fas fa-circle-check"></i>
                                Simple and clear product descriptions
                            </li>

                            <li>
                                <i class="fas fa-circle-check"></i>
                                Parent-controlled shopping and checkout
                            </li>

                            <li>
                                <i class="fas fa-circle-check"></i>
                                No payment information requested on this demo
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section
            class="section"
            aria-labelledby="newsletterHeading"
        >
            <div class="container">
                <div class="newsletter">
                    <h2 id="newsletterHeading">
                        Parent newsletter
                    </h2>

                    <p>
                        Parents and guardians can subscribe for
                        product updates and family offers.
                    </p>

                    <form id="newsletterForm" novalidate>
                        <label
                            class="sr-only"
                            for="newsletterEmail"
                        >
                            Parent or guardian email address
                        </label>

                        <input
                            id="newsletterEmail"
                            type="email"
                            placeholder="Parent or guardian email"
                            autocomplete="email"
                            required
                        >

                        <button
                            class="button button-primary"
                            type="submit"
                        >
                            Subscribe
                        </button>
                    </form>

                    <div
                        class="form-message"
                        id="newsletterMessage"
                        role="status"
                    ></div>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-about">
                    <h3>HappyKids</h3>

                    <p class="footer-description">
                        A colorful family-friendly shopping demo
                        created using HTML, CSS and JavaScript.
                        Shopping should be completed by a parent
                        or guardian.
                    </p>

                    <div class="social-links">
                        #
                            <i class="fab fa-facebook-f"></i>
                        </a>

                        #
                            <i class="fab fa-instagram"></i>
                        </a>

                        #
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>

                <div>
                    <h4>Explore</h4>

                    <ul class="footer-links">
                        <li>
                            #categoriesCategories</a>
                        </li>

                        <li>
                            #productsPopular products</a>
                        </li>

                        <li>
                            #parentsFor parents</a>
                        </li>
                    </ul>
                </div>

                <div>
                    <h4>Help</h4>

                    <ul class="footer-links">
                        <li>#Help center</a></li>
                        <li>#Delivery information</a></li>
                        <li>#Returns</a></li>
                        <li>#Contact</a></li>
                    </ul>
                </div>
            </div>

            <div class="copyright">
                © <span id="currentYear"></span>
                HappyKids. Family-friendly shopping demo.
            </div>
        </div>
    </footer>

    <!-- Toast message -->
    <div
        class="toast"
        id="toast"
        role="status"
        aria-live="polite"
    ></div>

    <script>
        const CATEGORIES = [
            {
                id: "toys",
                name: "Toys",
                icon: "fa-puzzle-piece"
            },
            {
                id: "books",
                name: "Books",
                icon: "fa-book-open"
            },
            {
                id: "learning",
                name: "Learning",
                icon: "fa-graduation-cap"
            },
            {
                id: "art",
                name: "Arts & Crafts",
                icon: "fa-palette"
            },
            {
                id: "outdoor",
                name: "Outdoor",
                icon: "fa-person-running"
            },
            {
                id: "clothing",
                name: "Clothing",
                icon: "fa-shirt"
            }
        ];

        const PRODUCTS = [
            {
                id: 1,
                title: "Colorful Building Blocks",
                description: "Build towers, houses and creative shapes.",
                price: 24.99,
                oldPrice: 29.99,
                rating: 5,
                reviews: 128,
                badge: "Popular",
                category: "toys",
                image: "https://images.unsplash.com/photo-1598880940080-ff9a29891b85?auto=format&fit=crop&w=800&q=80"
            },
            {
                id: 2,
                title: "Creative Story Book Set",
                description: "A colorful collection for shared reading time.",
                price: 18.99,
                rating: 5,
                reviews: 94,
                badge: "New",
                category: "books",
                image: "https://images.unsplash.com/photo-1512820790803-83ca734da794?auto=format&fit=crop&w=800&q=80"
            },
            {
                id: 3,
                title: "Kids Art Supply Kit",
                description: "Crayons, pencils and supplies for creative art.",
                price: 21.50,
                oldPrice: 27.50,
                rating: 4,
                reviews: 76,
                badge: "-22%",
                category: "art",
                image: "https://images.unsplash.com/photo-1513364776144-60967b0f800f?auto=format&fit=crop&w=800&q=80"
            },
            {
                id: 4,
                title: "Wooden Learning Puzzle",
                description: "A bright puzzle for matching and problem-solving.",
                price: 16.99,
                rating: 5,
                reviews: 61,
                category: "learning",
                image: "https://images.unsplash.com/photo-1594736797933-d0501ba2fe65?auto=format&fit=crop&w=800&q=80"
            },
            {
                id: 5,
                title: "Rainbow Play Ball",
                description: "A lightweight ball for supervised outdoor play.",
                price: 12.99,
                rating: 4,
                reviews: 53,
                category: "outdoor",
                image: "https://images.unsplash.com/photo-1617625802912-cde586faf331?auto=format&fit=crop&w=800&q=80"
            },
            {
                id: 6,
                title: "Comfortable Kids Hoodie",
                description: "A soft and colorful everyday hoodie.",
                price: 28.99,
                oldPrice: 34.99,
                rating: 5,
                reviews: 89,
                badge: "Sale",
                category: "clothing",
                image: "https://images.unsplash.com/photo-1519238263530-99bdd11df2ea?auto=format&fit=crop&w=800&q=80"
            },
            {
                id: 7,
                title: "Beginner Science Activity Set",
                description: "Simple activities to support curious learners.",
                price: 32.99,
                rating: 5,
                reviews: 112,
                badge: "Popular",
                category: "learning",
                image: "https://images.unsplash.com/photo-1532094349884-543bc11b234d?auto=format&fit=crop&w=800&q=80"
            },
            {
                id: 8,
                title: "Soft Teddy Bear",
                description: "A soft toy designed for comforting play.",
                price: 19.99,
                rating: 5,
                reviews: 146,
                category: "toys",
                image: "https://images.unsplash.com/photo-1559454403-b8fb88521f11?auto=format&fit=crop&w=800&q=80"
            }
        ];

        const categoriesGrid =
            document.getElementById("categoriesGrid");

        const productsGrid =
            document.getElementById("productsGrid");

        const searchInput =
            document.getElementById("searchInput");

        const resultCount =
            document.getElementById("resultCount");

        const clearFilter =
            document.getElementById("clearFilter");

        const cartCountElement =
            document.getElementById("cartCount");

        const cartButton =
            document.getElementById("cartButton");

        let cartCount = 0;
        let wishlistCount = 0;
        let toastTimeout;

        function escapeHtml(value) {
            return String(value).replace(
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

        function showToast(message) {
            const toast = document.getElementById("toast");

            toast.textContent = message;
            toast.classList.add("show");

            clearTimeout(toastTimeout);

            toastTimeout = setTimeout(function () {
                toast.classList.remove("show");
            }, 2500);
        }

        function renderCategories() {
            categoriesGrid.innerHTML = CATEGORIES.map(
                function (category) {
                    return `
                        <button
                            class="category-card"
                            type="button"
                            data-category="${category.id}"
                        >
                            <span class="category-icon">
                                <i class="fas ${category.icon}"></i>
                            </span>

                            <h3>${escapeHtml(category.name)}</h3>
                        </button>
                    `;
                }
            ).join("");
        }

        function renderProducts(productList) {
            resultCount.textContent =
                productList.length +
                " product" +
                (productList.length === 1 ? "" : "s") +
                " found";

            if (productList.length === 0) {
                productsGrid.innerHTML = `
                    <div class="empty-state">
                        <i class="fas fa-face-frown-open"></i>

                        <h3>No products found</h3>

                        <p>
                            Try a different word or clear the
                            current filter.
                        </p>
                    </div>
                `;

                return;
            }

            productsGrid.innerHTML = productList.map(
                function (product) {
                    const badgeClass =
                        product.badge &&
                        (
                            product.badge.startsWith("-") ||
                            product.badge === "Sale"
                        )
                            ? "sale"
                            : "";

                    const badge = product.badge
                        ? `
                            <span class="product-badge ${badgeClass}">
                                ${escapeHtml(product.badge)}
                            </span>
                        `
                        : "";

                    const oldPrice = product.oldPrice
                        ? `
                            <div class="old-price">
                                $${product.oldPrice.toFixed(2)}
                            </div>
                        `
                        : "";

                    const filledStars =
                        "★".repeat(product.rating);

                    const emptyStars =
                        "☆".repeat(5 - product.rating);

                    return `
                        <article class="product-card">
                            ${badge}

                            <div class="product-image">
                                <img
                                    src="${product.image}"
                                    alt="${escapeHtml(product.title)}"
                                    loading="lazy"
                                >
                            </div>

                            <div class="product-content">
                                <span class="product-category">
                                    ${escapeHtml(product.category)}
                                </span>

                                <h3>
                                    ${escapeHtml(product.title)}
                                </h3>

                                <p class="product-description">
                                    ${escapeHtml(product.description)}
                                </p>

                                <div class="product-information">
                                    <div>
                                        <div class="price">
                                            $${product.price.toFixed(2)}
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

                            <div class="product-actions">
                                <button
                                    class="add-button"
                                    type="button"
                                    data-product-id="${product.id}"
                                >
                                    <i class="fas fa-basket-shopping"></i>
                                    Add
                                </button>

                                <button
                                    class="wishlist-button"
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

        function filterProducts(query) {
            const normalizedQuery = String(query || "")
                .trim()
                .toLowerCase();

            if (!normalizedQuery) {
                renderProducts(PRODUCTS);
                clearFilter.hidden = true;
                return;
            }

            const filteredProducts = PRODUCTS.filter(
                function (product) {
                    return (
                        product.title
                            .toLowerCase()
                            .includes(normalizedQuery) ||
                        product.description
                            .toLowerCase()
                            .includes(normalizedQuery) ||
                        product.category
                            .toLowerCase()
                            .includes(normalizedQuery)
                    );
                }
            );

            renderProducts(filteredProducts);
            clearFilter.hidden = false;
        }

        function updateCart() {
            cartCountElement.textContent = cartCount;

            cartButton.setAttribute(
                "aria-label",
                "Shopping cart, " +
                cartCount +
                " item" +
                (cartCount === 1 ? "" : "s")
            );
        }

        categoriesGrid.addEventListener(
            "click",
            function (event) {
                const categoryButton =
                    event.target.closest("[data-category]");

                if (!categoryButton) {
                    return;
                }

                const selectedCategory =
                    categoryButton.dataset.category;

                const category = CATEGORIES.find(
                    function (item) {
                        return item.id === selectedCategory;
                    }
                );

                if (!category) {
                    return;
                }

                searchInput.value = category.name;
                filterProducts(selectedCategory);

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

                showToast(
                    "Showing " + category.name
                );
            }
        );

        productsGrid.addEventListener(
            "click",
            function (event) {
                const addButton =
                    event.target.closest(".add-button");

                if (addButton) {
                    const productId = Number(
                        addButton.dataset.productId
                    );

                    const selectedProduct = PRODUCTS.find(
                        function (product) {
                            return product.id === productId;
                        }
                    );

                    if (!selectedProduct) {
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
                        selectedProduct.title +
                        " was added to the cart"
                    );

                    setTimeout(function () {
                        addButton.disabled = false;

                        addButton.innerHTML = `
                            <i class="fas fa-basket-shopping"></i>
                            Add
                        `;
                    }, 1300);

                    return;
                }

                const wishlistButton =
                    event.target.closest(
                        ".wishlist-button"
                    );

                if (!wishlistButton) {
                    return;
                }

                wishlistButton.classList.toggle("active");

                const isActive =
                    wishlistButton.classList.contains("active");

                if (isActive) {
                    wishlistCount += 1;
                } else {
                    wishlistCount = Math.max(
                        0,
                        wishlistCount - 1
                    );
                }

                wishlistButton.innerHTML = `
                    <i class="${
                        isActive ? "fas" : "far"
                    } fa-heart"></i>
                `;

                showToast(
                    isActive
                        ? "Added to the wishlist"
                        : "Removed from the wishlist"
                );
            }
        );

        document
            .getElementById("searchButton")
            .addEventListener(
                "click",
                function () {
                    filterProducts(searchInput.value);
                }
            );

        searchInput.addEventListener(
            "input",
            function () {
                filterProducts(searchInput.value);
            }
        );

        clearFilter.addEventListener(
            "click",
            function () {
                searchInput.value = "";
                filterProducts("");
                searchInput.focus();
            }
        );

        cartButton.addEventListener(
            "click",
            function () {
                if (cartCount === 0) {
                    showToast(
                        "The cart is empty. Ask a parent before shopping."
                    );
                    return;
                }

                showToast(
                    "The cart has " +
                    cartCount +
                    " item" +
                    (cartCount === 1 ? "" : "s") +
                    ". A parent can continue checkout."
                );
            }
        );

        document
            .getElementById("headerWishlist")
            .addEventListener(
                "click",
                function () {
                    showToast(
                        wishlistCount === 0
                            ? "The wishlist is empty"
                            : "The wishlist has " +
                              wishlistCount +
                              " item" +
                              (
                                  wishlistCount === 1
                                      ? ""
                                      : "s"
                              )
                    );
                }
            );

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

                document.body.classList.toggle(
                    "menu-open",
                    !isOpen
                );
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

                mobileToggle.innerHTML =
                    '<i class="fas fa-bars"></i>';

                document.body.classList.remove(
                    "menu-open"
                );
            }
        );

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
                            "newsletterMessage"
                        );

                    if (!emailInput.validity.valid) {
                        message.textContent =
                            "Please enter a valid parent or guardian email.";

                        message.style.color = "#d9363e";
                        emailInput.focus();
                        return;
                    }

                    message.textContent =
                        "Thank you! The parent newsletter is now active.";

                    message.style.color = "#16884a";
                    emailInput.value = "";
                }
            );

        function initializeWebsite() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCart();

            document.getElementById(
                "currentYear"
            ).textContent =
                new Date().getFullYear();
        }

        initializeWebsite();
    </script>
</body>
</html>
