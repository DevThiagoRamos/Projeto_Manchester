import axios from "axios";


const PostRequest = async(data, url) => {

try{
    const response = await axios.post(url, data);
    console.log('dados enviados', response.data);
    return response.data
}catch(err){console.log('erro ao enviar dados', err)}

}

export default PostRequest;