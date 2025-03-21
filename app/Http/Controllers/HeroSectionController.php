<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreHeroSectionRequest;
use App\Http\Requests\UpdateHeroSectionRequest;
use App\Models\HeroSection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class HeroSectionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $hero_sections = HeroSection::latest('id')->paginate(10);
        return view("admin.hero_sections.index", compact("hero_sections"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view("admin.hero_sections.create");
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreHeroSectionRequest $request)
    {
        //
        DB::transaction(function () use ($request) {
            $validated = $request->validated();
            if ($request->hasFile("banner")) {
                $bannerPath = $request->file("banner")->store("banner", 'public');
                $validated['banner'] = $bannerPath;
            }
            $newHeroSection = HeroSection::create($validated);
        });
        return redirect()->route('admin.hero_sections.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(HeroSection $hero_section)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(HeroSection $hero_section)
    {
        //
        return view('admin.hero_sections.edit', compact('hero_section'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateHeroSectionRequest $request, HeroSection $hero_section)
    {
        //
        DB::transaction(function () use ($request, $hero_section) {
            $validated = $request->validated();
            if ($request->hasFile("banner")) {
                if ($hero_section->banner) {
                    Storage::disk('public')->delete($hero_section->banner);
                }

                $bannerPath = $request->file("banner")->store("banner", 'public');
                $validated['banner'] = $bannerPath;
            }
            $hero_section->update($validated);
        });
        return redirect()->route('admin.hero_sections.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(HeroSection $hero_section)
    {
        //
        DB::transaction(function () use ($hero_section) {
            if ($hero_section->banner) {
                Storage::disk('public')->delete($hero_section->banner);
            }
            $hero_section->delete();
        });
        return redirect()->route('admin.hero_sections.index');
    }
}
