import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

export async function POST(req, res){
    BigInt.prototype.toJSON=function(){
        return this.toString()
    }

      try{
        //single insert data
        const prisma=new PrismaClient()
        let reqbody=await req.json();
        let result=await prisma.employee.create({
            data:reqbody
        })
        console.log(result);
        return NextResponse.json({status:'success', result: result})
    }
    catch(err){
        return NextResponse.json({status:'fail', result: err.toString()})
    }
}
