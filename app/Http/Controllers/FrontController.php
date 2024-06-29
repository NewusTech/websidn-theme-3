<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Homes;
use App\Models\Images;
use App\Models\Corosels;
use App\Models\Texts;
use App\Models\Cards;
use App\Models\Prices;
use App\Models\Galeris;
use App\Models\Testimonis;
use App\Models\Contacts;
use App\Models\Abouts;
use App\Models\Files;
class FrontController extends Controller
{
    
    public function LogoShow()
    {   
        $gambar= Corosels::all();
        $logo= Homes::with(['images','texts'])->where('kategori', 'logo')->get();
        $about = Abouts::all();
        $service = Cards::all()->where('kategori', 'Layanan')->take(4);
        $price = Prices::all();
        $gallery = Galeris::with(['images','texts'])->take(4)->get();
        $team = Cards::all()->where('kategori', 'Pegawai');
        $testimoni = Testimonis::all();
        $contact = Contacts::all();
        return view('home', compact(
            'logo',
            'gambar', 
            'about',
            'service',
            'price',
            'gallery',
            'testimoni',
            'team',
            'contact',
        ));
        
    }
    public function ServiceShow()
    {   
        $service = Cards::all()->where('kategori', 'Layanan');
        $price = Prices::all();
        $contact = Contacts::all();
        $logo= Homes::with(['images','texts'])->where('kategori', 'logo')->get();

        return view('service',compact(
            'service',
            'price',
            'contact',
            'logo',
        ));
    }

    public function AboutShow()
    {   
        $about = Abouts::all();
        $contact = Contacts::all();
        $logo= Homes::with(['images','texts'])->where('kategori', 'logo')->get();

        return view('about',compact(
            'about',
            'contact',
            'logo',
        ));
    }

    public function GalleryShow()
    {   
        $gallery = Galeris::with(['images','texts'])->get();
        $contact = Contacts::all();
        $logo= Homes::with(['images','texts'])->where('kategori', 'logo')->get();

        return view('gallery',compact(
            'gallery',
            'contact',
            'logo',
        ));
    }

    public function PortfolioShow()
    {   
        $portofolio = Cards::all()->where('kategori', 'Portofolio');
        $contact = Contacts::all();
        $logo= Homes::with(['images','texts'])->where('kategori', 'logo')->get();

        return view('portfolio',compact(
            'portofolio',
            'contact',
            'logo',
        ));
    }

    public function BlogShow()
    {   
        
        $contact = Contacts::all();
        $logo= Homes::with(['images','texts'])->where('kategori', 'logo')->get();

        return view('blog',compact(

            'contact',
            'logo',
        ));
    }

    public function ContactShow()
    {   
        
        $contact = Contacts::all();
        $logo= Homes::with(['images','texts'])->where('kategori', 'logo')->get();

        return view('contact',compact(

            'contact',
            'logo',
        ));
    }
    public function FileBrosurShow()
    {   
        $file_brosur = Files::all()->where('kategori', 'Brosur');
        $file_price = Files::all()->where('kategori', 'Pricelist');
        $file_portfolio = Files::all()->where('kategori', 'Portofolio');
        $contact = Contacts::all();
        $logo= Homes::with(['images','texts'])->where('kategori', 'logo')->get();

        return view('files_brosur',compact(
            'file_brosur',
            'file_price',
            'file_portfolio',
            'contact',
            'logo',
        ));
    }
    public function FilePriceShow()
    {   
        $file_price = Files::all()->where('kategori', 'Pricelist');
        $contact = Contacts::all();
        $logo= Homes::with(['images','texts'])->where('kategori', 'logo')->get();

        return view('files_price',compact(
            'file_price',
            'contact',
            'logo',
        ));
    }
    public function FilePortofolioShow()
    {   
        $file_portfolio = Files::all()->where('kategori', 'Portofolio');
        $contact = Contacts::all();
        $logo= Homes::with(['images','texts'])->where('kategori', 'logo')->get();

        return view('files_portofolio',compact(
            'file_portfolio',
            'contact',
            'logo',
        ));
    }
    
}
