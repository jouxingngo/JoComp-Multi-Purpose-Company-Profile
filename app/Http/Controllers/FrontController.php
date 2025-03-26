<?php

namespace App\Http\Controllers;

use App\Models\CompanyAbout;
use App\Models\CompanyStatistic;
use App\Models\HeroSection;
use App\Models\OurPrinciple;
use App\Models\OurTeam;
use App\Models\Product;
use App\Models\Testimonial;
use Illuminate\Http\Request;

class FrontController extends Controller
{
    public function index(){
        $hero_section = HeroSection::latest('id')->take(1)->get();
        $statistics = CompanyStatistic::take(4)->get();
        $our_principles = OurPrinciple::take(4)->get();
        $products = Product::take(3)->get();
        $teams = OurTeam::take(7)->get();
        $testimonials = Testimonial::take(4)->get();
        return view("front.index", compact("statistics", 'our_principles', 'products', 'teams', 'testimonials', 'hero_section'));
    }

    public function team()
    {
        $teams = OurTeam::latest('id')->take(15)->get();
        $statistics = CompanyStatistic::take(4)->get();

        return view('front.team', compact('teams', 'statistics'));
    }

    public function about()
    {
        $statistics = CompanyStatistic::take(4)->get();
        $abouts = CompanyAbout::with('keypoints')->take(4)->get();
        return view('front.about', compact('statistics', 'abouts'));
    }
}
